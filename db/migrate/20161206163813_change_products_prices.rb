class ChangeProductsPrices < ActiveRecord::Migration[5.0]
  # def change
  #   reversible do |dir|
  #     change_table :products do |t|
  #       dir.up    { t.change :price, :string, limit: 4 }
  #       dir.down  { t.change :price, :integer }
  #     end
  #   end
  # end

  def up
    change_table :products do |t|
      t.change :price, :string, limit: 4
    end
  end

  def down
    change_table :products do |t|
      t.change :price, :integer
    end
  end
end
