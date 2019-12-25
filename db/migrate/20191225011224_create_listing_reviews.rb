class CreateListingReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :listing_reviews do |t|
      t.string :author
      t.integer :rating
      t.string :text

      t.belongs_to :tenant
      t.belongs_to :apartment_listing

      t.timestamps
    end
  end
end
