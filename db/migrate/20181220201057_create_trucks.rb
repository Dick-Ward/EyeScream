class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :name
      t.integer :wheels
      t.boolean :front

      t.timestamps
    end
  end
end
