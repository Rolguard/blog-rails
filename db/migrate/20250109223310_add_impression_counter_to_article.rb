class AddImpressionCounterToArticle < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :impression_count, :int, default: 0
  end
end