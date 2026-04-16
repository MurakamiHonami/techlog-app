class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, length: { maximum: 20 }, presence: true
  validates :email, presence: true
  validates :password, length: { in: 6..128 }, presence: true, confirmation: true
end
