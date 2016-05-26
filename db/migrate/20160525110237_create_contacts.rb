class CreateContacts < ActiveRecord::Migration
  
  def change
    create_table :spree_contacts  do |t|
      t.string :firstname
      t.string :lastname
      t.integer :birthday
      t.string :sex
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.integer :postalcode

      t.timestamps null: false
    end
  end
  
end
