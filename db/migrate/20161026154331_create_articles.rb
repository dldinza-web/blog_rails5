class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string  :title, null: false
      t.text    :text

      t.timestamps
    end

    add_index :articles, :title, unique: true
  end
end
