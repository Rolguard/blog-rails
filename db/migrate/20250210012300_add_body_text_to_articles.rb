class AddBodyTextToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :body_text, :string
  end
end
