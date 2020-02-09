class AddUserRefToDogruns < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogruns, :user, foreign_key: true
  end
end
