class Chapter < ApplicationRecord
  has_many :books
  has_many :stories, through: :books
end
