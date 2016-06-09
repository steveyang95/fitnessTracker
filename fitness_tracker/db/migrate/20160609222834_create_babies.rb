class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday

      t.timestamps null: false
    end
  end
end
