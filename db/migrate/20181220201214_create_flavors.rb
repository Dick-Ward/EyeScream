class CreateFlavors < ActiveRecord::Migration[5.1]
  def change
    create_table :flavors do |t|
      t.string :name
      t.boolean :gumballs
      t.string :color
      t.boolean :organic
      t.boolean :poison
      t.belongs_to :truck, foreign_key: true

      t.timestamps
    end
  end
end
