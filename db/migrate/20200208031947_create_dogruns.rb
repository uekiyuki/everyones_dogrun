class CreateDogruns < ActiveRecord::Migration[5.2]
  def change
    create_table :dogruns do |t|
      t.string :name
      t.string :adress
      t.integer :available_time
      t.string :price
      t.string :breadth
      t.string :other
      t.string :dogrun_image
    
      
      t.timestamps
    end
  end
end
