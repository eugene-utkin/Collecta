class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.hstore :name_translations
      t.timestamps
      
    end
  end
end
