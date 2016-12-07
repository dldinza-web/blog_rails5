class CreateJoinTableProductAuxProduct < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :aux_products do |t|
      t.index [:product_id, :aux_product_id]
      t.index [:aux_product_id, :product_id]
    end
  end
end
