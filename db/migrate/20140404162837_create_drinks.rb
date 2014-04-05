class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :mood
      t.string :weather
      t.string :atmosphere
    end
    create_table :outfits do |t|
      t.string :shirt
      t.string :pants
      t.string :jacket
      t.string :socks
      t.string :shoes
      t.string :hat
      t.string :glasses
    end
    create_table :get_ups do |t|
      t.belongs_to :drinks
      t.belongs_to :outfits
    end
  end
end
