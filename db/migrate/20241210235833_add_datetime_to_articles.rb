class AddDatetimeToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :created_datetime, :datetime
    Article.update_all(created_datetime: DateTime.current)
  end
end
