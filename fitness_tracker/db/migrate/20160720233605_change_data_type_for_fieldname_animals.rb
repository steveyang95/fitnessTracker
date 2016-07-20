class ChangeDataTypeForFieldnameAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.change :height, :float
      t.change :weight, :float
    end
  end
  def self.down
    change_table :animals do |t|
      t.change :height, :integer
      t.change :weight, :integer
    end
  end
end
