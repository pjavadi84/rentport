class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :address_number
      t.string :street_address
      t.string :city
      t.string :state 
      t.integer :zip_code
      t.integer :unit_number
      t.integer :square_footage
      t.integer :number_of_rooms
      t.integer :year_built
      t.string :plan_type
      t.boolean :amenities_has_pool
      t.boolean :amenities_has_indoor_laundry
      t.integer :number_of_parkings
      t.integer :contract_period_by_month
      t.integer :price

      t.timestamps null: false
    end
  end
end
