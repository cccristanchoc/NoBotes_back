class CreateSolicitations < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitations do |t|
      t.string :idApplicant
      t.string :idApplied
      t.string :description

      t.timestamps
    end
  end
end
