class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :short_description
      t.text :full_description

      t.timestamps
    end
  end
end
