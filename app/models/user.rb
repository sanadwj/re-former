class User < ApplicationRecord
  validates :user_name, presence: true, length: {within: 4..16}
  validates :password, presence: true, length: {within: 8..16}
  validates :email, presence: true
   
end
