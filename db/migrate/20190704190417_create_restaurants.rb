class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :address
      t.bigint :phone
      t.array :food
      t.time :hourEntry
      t.time :hourExit
      t.string :question
      t.decimal :rating

      t.timestamps
    end
  end
end
