class User < ApplicationRecord
  devise :trackable, :omniauthable, omniauth_providers: [:facebook]

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
