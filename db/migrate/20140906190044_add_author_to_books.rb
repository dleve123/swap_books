class AddAuthorToBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.string :author
      t.string :image_name
    end
  end
end
