class AddTagifyHashToTags < ActiveRecord::Migration[8.0]
  def change
    add_column :tags, :tagify_hash, :jsonb
  end
end
