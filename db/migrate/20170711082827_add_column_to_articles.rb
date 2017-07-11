class AddColumnToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :description, :string
    add_column :articles, :category, :string
    add_column :articles, :content, :text
  end
end
