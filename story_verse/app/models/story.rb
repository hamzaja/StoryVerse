class Story < ApplicationRecord
  belongs_to :user
  has_many :books 
  has_many :chapters, through: :books
end
