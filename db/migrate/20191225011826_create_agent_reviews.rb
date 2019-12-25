class CreateAgentReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :agent_reviews do |t|
      t.string :author
      t.integer :rating
      t.string :text

      t.belongs_to :agent
      t.belongs_to :tenant

      t.timestamps
    end
  end
end
