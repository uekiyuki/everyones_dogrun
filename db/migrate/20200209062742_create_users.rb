class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.text :content
      t.string :password_digest, null:false
      t.string :user_image
      t.boolean :admin ,default: false, null: false
      # add_index :users, :email, unique: true
      t.timestamps
    end
  end
end
