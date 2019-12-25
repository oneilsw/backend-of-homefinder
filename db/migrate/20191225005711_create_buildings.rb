class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.integer :year_built
      t.boolean :elevator
      t.boolean :super
      t.boolean :laundry

      t.belongs_to :neighborhood

      t.timestamps
    end
  end
end
