class CreateApartmentListings < ActiveRecord::Migration[6.0]
  def change
    create_table :apartment_listings do |t|
      t.string :apartment
      t.integer :rent
      t.integer :lease_length
      t.integer :broker_fee
      t.boolean :available
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.date :availability_date
      t.text :summary
      t.text :image, array: true, default: []

      t.belongs_to :building
      t.belongs_to :agent

      t.timestamps
    end
  end
end
