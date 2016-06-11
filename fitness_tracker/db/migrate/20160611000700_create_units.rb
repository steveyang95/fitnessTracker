class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.float :value
      t.string :unit_name
    end
  end
end
