class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :carname
      t.string :company
      t.timestamps
    end
  end
end
