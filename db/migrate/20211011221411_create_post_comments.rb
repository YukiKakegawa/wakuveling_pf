class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|

    t.references :post, null: false
    t.references :user, null: false
    t.string :comment, null: false
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end
