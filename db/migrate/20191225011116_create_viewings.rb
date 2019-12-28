class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.date :date
      t.time :time
      t.boolean :confirmed

      t.belongs_to :apartment_listing
      t.belongs_to :tenant 

      t.timestamps
    end
  end
end
