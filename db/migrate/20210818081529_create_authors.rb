class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.hstore :name_translations
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.integer :death_year
      t.integer :death_month
      t.integer :death_day
      t.timestamps
    end
  end
end
