class CreateFoundations < ActiveRecord::Migration[5.2]
  def change
    create_table :foundations do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :address
      t.decimal :phone
      t.string :food
      t.time :hourEntry
      t.time :hourExit

      t.timestamps
    end
  end
end
