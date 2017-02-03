class Kondate < ApplicationRecord
  has_many :dishes
  has_many :recipes, through: :dishes

  scope :not_contain_keywords, -> (keywords) { joins(:dishes => :recipe).eager_load(:dishes => :recipe).merge(Recipe.not_contain_keywords(keywords)) }
  scope :kondates_by_kondate_histories, -> (histories) { where(id: histories.present? ? histories.map(&:kondate_id) : []).order(:genre) }

  enum genre: {
      breakfast: 0,
      lunch: 1,
      dinner: 2
  }

  def materials
    recipes.map(&:materials).flatten
  end

  def self.is_enough_text?(text)
    return false if text.blank?

    big_categories = %w(
      お茶漬け リゾット おにぎり カレー カレーライス チャーハン 炒飯 ピラフ オムライス 寿司
      ハンバーガー サンドイッチ うどん そば 蕎麦 ラーメン パスタ スパゲッティ グラタン 餃子
      カツ 天ぷら シチュー 鍋 コロッケ オムレツ おでん 煮物 サラダ 酢の物 味噌汁 スープ
    )

    !big_categories.include?(text)
  end

  def self.create_kondates_from_text(text, exclude_keywords: nil)
    exclude_material_names = []

    # テキストを素に食材を判別し、含まれている食材を省く
    if text.present?
      klasses = Klass.klasses_from_text(text)
      exclude_material_names = exclude_material_names.concat(klasses.pluck(:name).map { |names| names.split(?,) }.flatten).uniq
    end

    # 除外すべきキーワードを素に、含まれている食材を省く
    if exclude_keywords.present?
      klasses = Klass.contain_keywords(exclude_keywords)
      exclude_material_names = exclude_material_names.concat(klasses.pluck(:name).map { |names| names.split(?,) }.flatten).uniq
      exclude_material_names = exclude_material_names.concat(exclude_keywords).uniq
    end

    return nil if exclude_material_names.blank?

    kondates = Kondate.not_contain_keywords(exclude_material_names)
    kondate_ids = [
        kondates.breakfast.pluck(:id).uniq.sample(1).first,
        kondates.lunch.pluck(:id).uniq.sample(1).first,
        kondates.dinner.pluck(:id).uniq.sample(1).first
    ].compact

    # 三食揃わなかったら返さない
    Kondate.where(id: kondate_ids) if kondate_ids.size == 3
  end

  def self.restaurants_from_kondates(kondates)
    materials = kondates.map(&:materials).flatten
    material_names = materials.map(&:normalized_name).compact
    material_names_ordered = material_names.group_by { |n| n }.sort_by { |_, v| -v.size }.map(&:first)

    # 上位10つの食材が含まれるレストランを検索し返す
    # Gnavi::Restaurant.new.fetch_restaurant(keywords: material_names_ordered.first(10).join(','))
    Gnavi::Restaurant.new.fetch_restaurant(keywords: material_names_ordered).uniq { |r| r.code.category_code_s }
  end
end
