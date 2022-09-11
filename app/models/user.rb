class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_NAME = /\A[ぁ-んァ-ヶ一-龥々ー]+\z/
  VALID_KANA = /\A[ァ-ヶー－]+\z/

  validates :nickname,        presence: true
  validates :last_name,       presence: true, format: { with: VALID_NAME }
  validates :first_name,      presence: true, format: { with: VALID_NAME }
  validates :last_name_kana,  presence: true, format: { with: VALID_KANA }
  validates :first_name_kana, presence: true, format: { with: VALID_KANA }
  validates :birth_date,      presence: true
end
