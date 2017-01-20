class User < ApplicationRecord
  devise :trackable, :omniauthable, omniauth_providers: [:facebook]
  acts_as_taggable_on :dislikes

  has_and_belongs_to_many :allergies

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
