class RemoveAuthorFromArticles < ActiveRecord::Migration[8.0]
  def change
    remove_column :articles, :author, :string
  end
end
