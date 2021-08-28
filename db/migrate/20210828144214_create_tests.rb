class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 0
      
      t.timestamps
      
      add_foreign_key :tests, :categories
    end
  end
end
