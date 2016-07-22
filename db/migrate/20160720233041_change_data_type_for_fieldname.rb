class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :babies do |t|
      t.change :height, :float
      t.change :weight, :float
      t.change :temperature, :float
    end
  end
  def self.down
    change_table :babies do |t|
      t.change :height, :integer
      t.change :weight, :integer
      t.change :temperature, :integer
    end
  end
end
