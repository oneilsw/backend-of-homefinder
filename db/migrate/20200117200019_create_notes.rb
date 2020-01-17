class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :text
      t.belongs_to :sender
      t.belongs_to :receiver

      t.timestamps
    end
  end
end
