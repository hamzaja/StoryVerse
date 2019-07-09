class User < ApplicationRecord
  has_secure_password
  has_many :stories
  validates_uniqueness_of :name
end
