class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :fisrtName
      t.string :lastName
      t.string :address
      t.integer :postalCode
      t.string :city
      t.string :country
      t.string :email
      t.string :reason

      t.timestamps
    end
  end
end
