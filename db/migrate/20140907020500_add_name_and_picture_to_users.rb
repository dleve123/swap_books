class AddNameAndPictureToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.name
      t.picture
    end
  end
end
