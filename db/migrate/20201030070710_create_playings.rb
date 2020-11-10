class CreatePlayings < ActiveRecord::Migration[6.0]
  def change
    create_table :playings do |t|
      t.string :title, null: false
      t.date :play_day, null: false
      t.text :rule, null: false
      t.references :user

      t.timestamps
    end
  end
end
