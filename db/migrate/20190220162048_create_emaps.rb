class CreateEmaps < ActiveRecord::Migration[5.2]
  def change
    create_table :emaps do |t|
      t.string :name
      t.string :description
      t.string :country
      t.string :type_sys
      t.decimal :latitude
      t.decimal :longitude
      t.integer :capacity

      t.timestamps
    end
  end
end
