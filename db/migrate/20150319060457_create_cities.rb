class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :code
      t.timestamps null: false
    end
    add_index :cities, :code, unique: true
  end
end