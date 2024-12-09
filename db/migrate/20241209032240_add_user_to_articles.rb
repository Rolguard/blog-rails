class AddUserToArticles < ActiveRecord::Migration[8.0]
  def change
    add_reference :articles, :user, foreign_key: true
    Article.all.update_all(user_id: 6)
    change_column_null :articles, :user_id, false
  end
end
