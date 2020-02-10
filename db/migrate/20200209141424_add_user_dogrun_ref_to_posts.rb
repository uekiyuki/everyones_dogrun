class AddUserDogrunRefToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :dogrun, foreign_key: true
  end
end
