class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :description
      t.integer :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
