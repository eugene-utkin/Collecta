class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.hstore :name_translations
      t.integer :birth_year
      t.timestamps
    end
  end
end
