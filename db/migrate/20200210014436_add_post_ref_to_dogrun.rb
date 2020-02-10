class AddPostRefToDogrun < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogruns, :post, foreign_key: true
  end
end
