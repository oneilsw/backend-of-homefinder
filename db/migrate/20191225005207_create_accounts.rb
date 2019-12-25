class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password_digest
      t.string :password_confirmation

      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
