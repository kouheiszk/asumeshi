class Kondate < ApplicationRecord
  has_many :dishes
  has_many :recipes, through: :dishes

  scope :not_contain_keywords, -> (keywords) { joins(:dishes => :recipe).eager_load(:dishes => :recipe).merge(Recipe.not_contain_keywords(keywords)) }

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

  def self.today_kondates_by_user(user)
    return nil if user.blank?

    histories = user.kondate_histories.today
    return nil if histories.blank?

    Hashie::Mash.new({
                         breakfast: histories.map(&:kondate).select(&:breakfast?).first,
                         lunch: histories.map(&:kondate).select(&:lunch?).first,
                         dinner: histories.map(&:kondate).select(&:dinner?).first
                     })
  end

  def self.today_kondates_by_history(history)
    if history[:date].present? && history[:date].today?
      kondates = Kondate.where(id: history[:kondate_ids])
      Hashie::Mash.new({
                           breakfast: kondates.select(&:breakfast?).first,
                           lunch: kondates.select(&:lunch?).first,
                           dinner: kondates.select(&:dinner?).first
                       })
    end
  end

  def self.history_from_kondates(kondates)
    Hashie::Mash.new({
                         date: DateTime.now,
                         kondate_ids: kondates.map { |k, v| v.id }
                     })
  end

  def self.yesterday_kondates_by_user(user)
    return nil if user.blank?

    histories = user.kondate_histories.yesterday
    return nil if histories.blank?

    Hashie::Mash.new({
                         breakfast: histories.map(&:kondate).select(&:breakfast?).first,
                         lunch: histories.map(&:kondate).select(&:lunch?).first,
                         dinner: histories.map(&:kondate).select(&:dinner?).first
                     })
  end

  def self.create_kondates_from_keywords(keywords, exclude_keywords: nil)
    klasses = Klass.klasses_from_keywords(keywords)
    return nil if klasses.blank?

    exclude_material_names = klasses.pluck(:name).map { |names| names.split(?,) }.flatten
    exclude_material_names = exclude_material_names.concat(exclude_keywords).uniq if exclude_keywords.present?
    kondates = Hashie::Mash.new({
                                    breakfast: Kondate.not_contain_keywords(exclude_material_names).breakfast.sample(1).first,
                                    lunch: Kondate.not_contain_keywords(exclude_material_names).lunch.sample(1).first,
                                    dinner: Kondate.not_contain_keywords(exclude_material_names).dinner.sample(1).first
                                })

    # 三食揃わなかったら返さない
    kondates if kondates.breakfast.present? && kondates.lunch.present? && kondates.dinner.present?
  end
end
