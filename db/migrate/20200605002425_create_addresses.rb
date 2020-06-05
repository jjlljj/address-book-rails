class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
