class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :category
  end
end
