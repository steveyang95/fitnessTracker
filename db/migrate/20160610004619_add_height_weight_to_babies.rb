class AddHeightWeightToBabies < ActiveRecord::Migration
  def change
    add_column :babies, :height, :integer
    add_column :babies, :weight, :integer
  end
end
