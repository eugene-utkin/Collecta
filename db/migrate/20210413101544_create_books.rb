class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publication_year
      t.text :description
      t.string :image_url
      t.string :publication_country
      t.string :publication_city
      t.string :publishing_company
      t.integer :number_of_copies
      t.integer :isbn
    end
  end
end
