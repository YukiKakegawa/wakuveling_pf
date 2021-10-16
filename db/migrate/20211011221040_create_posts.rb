class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

    t.references :user, null: false
    t.string :tourist_spot, null: false
    t.string :prefecture, null: false
    t.string :address, null: false
    t.string :body, null: false
    t.string :image_id, null: false
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end
