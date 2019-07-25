class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :hometown_city
      t.string :hometown_country
      t.string :email
      t.string :hashed_password
      t.string :salt
      t.timestamps
    end
  end
end
