class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :status
      t.integer :author_id
      t.integer :language_id
      t.timestamps
    end
  end
end
