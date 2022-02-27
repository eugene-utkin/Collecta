class Language < ApplicationRecord
  has_many :names
  has_many :changes
end
