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

  def self.is_valid_keywords?(keywords)
    return false if keywords.blank?

    big_categories = %w(
      お茶漬け リゾット おにぎり カレー カレーライス チャーハン 炒飯 ピラフ オムライス 寿司
      ハンバーガー サンドイッチ うどん そば 蕎麦 ラーメン パスタ スパゲッティ グラタン 餃子
      カツ 天ぷら シチュー 鍋 コロッケ オムレツ おでん 煮物 サラダ 酢の物 味噌汁 スープ
    )

    !big_categories.include?(keywords)
  end

  def self.create_kondates_from_keywords(keywords, exclude_keywords: nil)
    klasses = Klass.klasses_from_keywords(keywords)
    return nil if klasses.blank?

    exclude_material_names = klasses.pluck(:name).map { |names| names.split(?,) }.flatten
    exclude_material_names = exclude_material_names.concat(exclude_keywords).uniq if exclude_keywords.present?
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
    Gnavi::Restaurant.new.fetch_restaurant(keywords: '卵').uniq { |r| r.code.category_code_s }
  end
end
