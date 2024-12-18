class ChangeArticleStatusColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column :articles, :status, :publish_status
  end
end
