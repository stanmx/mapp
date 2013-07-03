class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :category_id
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
