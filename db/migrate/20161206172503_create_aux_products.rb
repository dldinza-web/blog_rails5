class CreateAuxProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :aux_products do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
