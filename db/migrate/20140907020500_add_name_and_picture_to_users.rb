class AddNameAndPictureToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :picture
    end
  end
end
