class AuthorAddName < ApplicationRecord
  belongs_to :author
  belongs_to :language
end
