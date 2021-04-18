class CreateEditions < ActiveRecord::Migration[6.0]
  def change
    create_table :editions do |t|

      t.timestamps
    end
  end
end
