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

    big_category = %w(
      お茶漬け リゾット おにぎり カレー カレーライス チャーハン 炒飯 ピラフ オムライス 寿司
      ハンバーガー サンドイッチ うどん そば 蕎麦 ラーメン パスタ スパゲッティ グラタン 餃子
      カツ 天ぷら シチュー 鍋 コロッケ オムレツ おでん 煮物 サラダ 酢の物 味噌汁 スープ
    )
    if keywords =~ Regexp.new("#{big_category.join('|')}")
      return false
    else
      return true
    end
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

  def self.create_kondates_from_keywords(keywords, user = nil)
    materials = Watson::Nlc.new.fetch_materials(keywords: keywords)
    return nil if materials.blank?

    keywords = materials.map(&:klass).map(&:name).map { |names| names.split(?,) }.flatten
    keywords = keywords.concat(user.allergy_list).concat(user.dislike_list).uniq if user.present?
    kondates = Hashie::Mash.new({
                                    breakfast: Kondate.not_contain_keywords(keywords).breakfast.sample(1).first,
                                    lunch: Kondate.not_contain_keywords(keywords).lunch.sample(1).first,
                                    dinner: Kondate.not_contain_keywords(keywords).dinner.sample(1).first
                                })

    if user.present? && kondates.breakfast.present? && kondates.lunch.present? && kondates.dinner.present?
      kondates.each do |_, kondate|
        KondateHistory.create(user_id: user.id, kondate_id: kondate.id, suggested_at: Time.now)
      end
    end

    kondates
  end
end
