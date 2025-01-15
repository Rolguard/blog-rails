class Admin::TagsController < Admin::BaseController
  def index
    @tags = Tag.all.order(:name)
  end
  def show
    @tag = Tag.friendly.find(params[:id])
  end
  def destroy
    @tag = Tag.friendly.find(params[:id])
    # For many-to-many relationships, you represent the relationship using either a join table (has_and_belongs_to)
    # Or create a model that uses has_many: through: (which is like a join table
    # with additional attributes if necessary - This is the modern RoR method of representing many-to-many)
    # Both attributes in taggings of tag_id and article_id cannot be nil and must have a valid id
    # That represents an associated ActiveRecord. If we try to delete a tag from the Tags table
    # without deleting all the associations between the tag to be deleted and its associated articles
    # Represented through the Taggings table (we can access this with @tag.articles
    # Due to the association specified in the Tag model has_many: :articles :through :taggings),
    # You would have a tag_id that exists in the Taggings table but is no longer valid since it points
    # To a reference (foreign key) to a Tag ActiveRecord that does not exist anymore
    @tag.articles.clear
    @tag.destroy

    # Return a 303 See Other status code to ensure a double DELETE does not occur.
    # This is because some browsers follow the redirect using the original request method (DELETE)
    redirect_to tags_path, status: :see_other
  end
end
