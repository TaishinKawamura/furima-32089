class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :birthday, presence: true
  # validates :email, {presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }}
  validates :family_name, :first_name, { presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ } }
  validates :family_kana, :first_kana, { presence: true, format: { with: /\A[ァ-ヶー－]+\z/ } }
  validates :password, { presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i } }
end
