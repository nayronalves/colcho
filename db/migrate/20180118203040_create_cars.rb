class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :color
      t.string :power
      t.string :category

      t.timestamps
    end
  end
end
