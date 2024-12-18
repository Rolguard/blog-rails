class ChangeCommentStatusColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column :comments, :status, :publish_status
  end
end
