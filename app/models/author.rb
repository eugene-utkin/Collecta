class Author < ApplicationRecord
  has_many :names
  has_many :main_names
end
