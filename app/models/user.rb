class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  valid_name = /\A[ぁ-んァ-ヶ一-龥々ー]+\z/
  valid_kana = /\A[ァ-ヶー－]+\z/

  validates :nickname,        presence: true
  validates :last_name,       presence: true, format: { with: valid_name }
  validates :first_name,      presence: true, format: { with: valid_name }
  validates :last_name_kana,  presence: true, format: { with: valid_kana }
  validates :first_name_kana, presence: true, format: { with: valid_kana }
  validates :birth_date,      presence: true
end
