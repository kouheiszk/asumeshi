class KondateHistory < ApplicationRecord
  belongs_to :user
  belongs_to :kondate

  scope :yesterday, -> { where(suggested_at: DateTime.yesterday) }
  scope :today, -> { where(suggested_at: Date.current) }

  def self.save_kondates(kondates, user:)
    kondates.each do |_, kondate|
      KondateHistory.create(user_id: user.id, kondate_id: kondate.id, suggested_at: Time.now)
    end
  end
end
