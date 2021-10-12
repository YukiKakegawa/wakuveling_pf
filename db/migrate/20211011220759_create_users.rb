class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

    t.string :email, null: false
    t.string :encrypted_password, null: false
    t.string :name, null: false
    t.string :profile_image, null: false
    t.string :birthplace, null: false
    t.string :telephone_number, null: false
    t.boolean :is_active, null: false
    t.datetime :created_at, null: false
    t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end
