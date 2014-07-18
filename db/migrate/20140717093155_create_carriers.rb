class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.string :email_address
      t.integer :phone_number
      t.string :resume
      t.string :photo

      t.timestamps
    end
  end
end
