class AlterDrinksRenameWeatherToCityAndAddGender < ActiveRecord::Migration
  def self.up
    add_column :drinks, :gender, :string
  end
end
