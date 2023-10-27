class CreateGraphics < ActiveRecord::Migration[7.0]
  def change
    create_table :graphics do |t|
      t.references :user, foreign_key: true
      t.string :name,    null: false
      t.text :data

      t.timestamps
    end
  end
end
