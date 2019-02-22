class CreateEmaps < ActiveRecord::Migration[5.2]
  def change
    create_table :emaps do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :country
      t.string :type_sys
      t.float :latitude
      t.float :longitude
      t.integer :capacity

      t.timestamps
    end
  end
end
