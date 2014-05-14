class CreateRoosterPosts < ActiveRecord::Migration
  def change
    create_table :rooster_posts do |t|
      t.string :title
      t.string :slug, index: true
      t.string :template
      t.integer :state
      t.integer :created_by_id, index: true
      t.integer :author_id, index: true
      t.datetime :published_at
      t.string :description, limit: 255
      t.text :excerpt

      t.timestamps
    end
  end
end
