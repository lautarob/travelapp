class User < ActiveRecord::Base
  has_many :travels
  has_and_belongs_to_many :travel_matches, class_name: 'Travel'

  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end