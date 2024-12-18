class AddApprovalStatusToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :approval_status, :integer, default: 1
  end
end
