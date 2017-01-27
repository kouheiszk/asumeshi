class KondateHistory < ApplicationRecord
  belongs_to :user
  belongs_to :kondate

  scope :yesterday, -> { where(suggested_at: DateTime.yesterday) }
  scope :today, -> { where(suggested_at: Date.current) }
end
