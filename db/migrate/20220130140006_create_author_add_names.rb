class CreateAuthorAddNames < ActiveRecord::Migration[6.0]
  def change
    create_table :author_add_names do |t|
      t.string :name
      t.timestamps
    end
  end
end