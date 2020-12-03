class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z+\d]+\z/i.freeze

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数字混合で入力してください' }
end
