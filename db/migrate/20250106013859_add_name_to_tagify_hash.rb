class AddNameToTagifyHash < ActiveRecord::Migration[8.0]
  def change
    Tag.all.each do |tag|
      tag.update_attribute(:tagify_hash, { value: tag.name })
    end
  end
end
