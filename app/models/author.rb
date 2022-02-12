class Author < ApplicationRecord
  has_many :names
  has_many :author_main_names
end
