class AddColumnToBabies < ActiveRecord::Migration
  def change
    add_column :babies, :temperature, :integer
  end
end
