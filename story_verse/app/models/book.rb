class Book < ApplicationRecord
  belongs_to :story
  belongs_to :chapter
end
