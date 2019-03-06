class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,
    presence: true,
    length: { maximum: 25}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
  validates :email,
    presence: true,
    length: { maximum: 100, too_long: "メール文が長すぎます。"} ,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true

  validates :profile,
    presence: true,
    length: { maximum: 250, too_long: "プロフィール文は250文字以内です。"}

end
