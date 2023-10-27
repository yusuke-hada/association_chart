class CreateGraphics < ActiveRecord::Migration[7.0]
  def change
    create_table :graphics do |t|
      t.string :name
      t.text :data

      t.timestamps
    end
  end
end
