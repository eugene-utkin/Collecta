class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publication_year
      t.string :publication_place
      t.string :publishing_company
      t.integer :number_of_copies
    end
  end
end
