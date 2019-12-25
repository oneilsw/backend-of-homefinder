class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :image
      t.string :bio
      t.string :brokerage
      t.integer :rating_average

      t.timestamps
    end
  end
end
