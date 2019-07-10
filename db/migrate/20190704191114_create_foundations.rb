class CreateFoundations < ActiveRecord::Migration[5.2]
  def change
    create_table :foundations do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :city
      t.string :address
      t.bigint :phone
      t.time :hourEntry
      t.time :hourExit
      t.boolean :isActive

      t.timestamps
    end
  end
end
