class CreateOpenHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :open_houses do |t|
      t.string :details
      t.date :date
      t.time :time

      t.belongs_to :apartment_listing

      t.timestamps
    end
  end
end
