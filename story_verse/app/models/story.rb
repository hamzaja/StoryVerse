class Story < ApplicationRecord
  has_many :books
  has_many :chapters, through: :books
end
