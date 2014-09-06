class AddTimestampsToBooksAndMatches < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.timestamps
    end

    change_table :matches do |t|
      t.timestamps
    end
  end
end
