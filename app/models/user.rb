class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :email, presence: true
  has_many :comments
  # Uniqueness of email is already checked by the symbol :validatable
  # representing the Validatable Devise module since email is used as authentication key
  # This means no need to add uniqueness validation to email to uniquely identify users
end
