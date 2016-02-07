class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauth_providers => [:slack]

  def self.from_omniauth(auth)
      user = where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
        u.password = Devise.friendly_token[0,20]
      end
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.nickname = auth.info.nickname
      user.save
      return user
  end

end
