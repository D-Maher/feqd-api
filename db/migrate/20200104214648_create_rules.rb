class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rules do |t|
      t.string :title
      t.text :body
      t.integer :min_players

      t.timestamps
    end
  end
end
