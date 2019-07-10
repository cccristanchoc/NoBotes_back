class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :idRestaurant
      t.string :idFood
      t.string :description

      t.timestamps
    end
  end
end
