class Author < ApplicationRecord
  has_many :names
  has_many :changes
end
