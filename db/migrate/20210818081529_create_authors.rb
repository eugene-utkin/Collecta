class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.hstore :main_name_translations
      t.hstore :bio_translations
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.string :birth_place
      t.integer :death_year
      t.integer :death_month
      t.integer :death_day
      t.string :death_place
      t.string :portrait_link
      t.timestamps
    end
  end
end
