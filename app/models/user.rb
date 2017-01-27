class User < ApplicationRecord
  devise :trackable, :omniauthable, omniauth_providers: [:facebook]
  acts_as_taggable_on :allergies, :dislikes

  enum style: {
      either: 0,
      cooking: 1,
      restaurant: 2
  }

  validates :name, presence: true

  has_many :kondate_histories, dependent: :destroy

  def self.find_for_facebook_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    if user.blank?
      user = User.create(
          uid: auth.uid,
          provider: auth.provider,
          name: auth.extra.raw_info.name,
      )
    end

    user
  end
end
