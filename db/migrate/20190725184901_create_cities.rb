class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.integer :city_api_id
      t.timestamps
    end
  end
end
