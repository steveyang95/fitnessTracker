class AddMetricToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :metric, :boolean, default: true
  end
end
