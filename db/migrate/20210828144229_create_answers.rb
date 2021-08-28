class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.boolean :correct, null: false

      t.timestamps

      add_foreign_key :answers, :questions
    end
  end
end
