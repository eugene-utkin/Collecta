class CreateAuthorMainNames < ActiveRecord::Migration[6.0]
  def change
    create_table :author_main_names do |t|

      t.timestamps
    end
  end
end
