class KondateHistory < ApplicationRecord
  belongs_to :user
  belongs_to :kondate

  scope :histories_for_user, -> (user, at: 0.day) { where(user_id: user&.id, suggested_at: Time.now.since(at)) }

  def self.create_kondate_histories_from_kondates(kondates, user: nil)
    if user.present?
      kondates.map { |k| create(user_id: user.id, kondate_id: k.id, suggested_at: Time.now) }
    else
      kondates.map { |k| new(kondate_id: k.id, suggested_at: Time.now) }
    end
  end
end
