class RemoveBirthdayFromBabies < ActiveRecord::Migration
  def change
    remove_column :babies, :birthday, :string
  end
end
