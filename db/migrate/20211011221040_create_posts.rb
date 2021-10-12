class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

    t.references :user, null: false
    t.references :tourist_spot, null: false
    t.string :title, null: false
    t.string :body, null: false
    t.string :image, null: false
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end
