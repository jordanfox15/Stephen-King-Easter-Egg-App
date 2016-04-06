class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|

      t.text :plot
      t.integer :book_id
      t.integer :repeater_id

      t.timestamps null: false
    end
  end
end
