class CreateBlogTags < ActiveRecord::Migration
  def change
    create_table :blog_tags do |t|
      t.belongs_to :blog
      t.belongs_to :tag
    end
  end
end
