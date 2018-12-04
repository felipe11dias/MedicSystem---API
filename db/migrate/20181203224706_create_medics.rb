class CreateMedics < ActiveRecord::Migration[5.2]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :crm

      t.timestamps
    end
  end
end
