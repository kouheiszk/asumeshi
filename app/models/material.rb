class Material < ApplicationRecord
  has_and_belongs_to_many :recipe

  scope :contain_keywords, -> (keywords) { where(keywords.map { "`materials`.`name` LIKE ?" }.join(" OR "), *keywords.map { |k| "%#{k}%" }) if keywords.present? }

  def normalized_name
    condiments = %w(
      調味料 水 湯 酒 砂糖 きび糖 三温糖 グラニュー糖 塩 ソルト 胡椒 こしょう みりん 味醂 醤油 しょうゆ 酢 油 味噌 豆板醤 コンソメ ワイン はちみつ カレー粉 出汁
      レモン汁 バター ナンプラー ヨーグルト 牛乳 小麦粉 薄力粉 強力粉 片栗粉 つゆ かつお節 ブラックペッパー クミン
      ドレッシング マヨネーズ タレ オイル パセリ バジル の素 にんにく ニンニク ガーリック ケチャップ その他 その他 だし ごま チーズ
      ソース 缶 チューブ パック 中華スープ 鶏がらスープ 全粒粉 月桂樹の葉 ブイヨン 市販
    )
    return nil if name =~ Regexp.new("#{condiments.join('|')}")
    normalized = name.scan(/(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+/)
    normalized.first if normalized.size == 1
  end
end
