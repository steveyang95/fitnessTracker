class AddMetricToBabies < ActiveRecord::Migration
  def change
    add_column :babies, :metric, :boolean
  end
end
