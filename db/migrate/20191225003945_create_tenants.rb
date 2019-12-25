class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :image
      t.date :move_in_date
      t.integer :budget

      t.timestamps
    end
  end
end
