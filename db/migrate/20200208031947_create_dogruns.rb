class CreateDogruns < ActiveRecord::Migration[5.2]
  def change
    create_table :dogruns do |t|
      t.string :name
      t.string :address
      t.datetime :opening_at
      t.datetime :closing_at
      t.string :price
      t.string :breadth
      t.string :other
      t.string :image
    
      
      t.timestamps
    end
  end
end
