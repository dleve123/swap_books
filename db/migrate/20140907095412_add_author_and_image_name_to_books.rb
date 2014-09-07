class AddAuthorAndImageNameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
    add_column :books, :image_name, :string
  end
end
