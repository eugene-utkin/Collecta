class CreateChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :changes do |t|
      t.string :new_value
      t.string :old_value
      t.string :type
      t.integer :author_id
      t.integer :language_id
      t.timestamps
    end
  end
end
