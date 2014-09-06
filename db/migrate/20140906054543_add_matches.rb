class AddMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :buyer_id
      t.integer :seller_id
      t.belongs_to :book
    end
  end
end
