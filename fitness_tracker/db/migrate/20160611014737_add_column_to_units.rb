class AddColumnToUnits < ActiveRecord::Migration
  def change
    add_column :units, :metric, :boolean
  end
end
