class CreateIphones < ActiveRecord::Migration
  def change
    create_table :iphones do |t|
      t.string :Model
      t.string :Memory
      t.text :Condition
      t.integer :Price
      t.boolean :Availability, default: true

      t.timestamps null: false
    end
  end
end
