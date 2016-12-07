class AddArticleRefToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :article, foreign_key: true
  end
end
