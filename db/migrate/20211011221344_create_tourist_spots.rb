class CreateTouristSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_spots do |t|

    t.references :post, null: false
    t.string :prefecture, null: false
    t.string :address, null: false
    t.float :map, null:false

      t.timestamps
    end
  end
end
