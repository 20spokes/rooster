class CreateRoosterPages < ActiveRecord::Migration
  def change
    create_table :rooster_pages do |t|
      t.string :title
      t.string :slug, index: true
      t.string :template
      t.integer :state
      t.integer :created_by_id, index: true

      t.timestamps
    end

    add_index :rooster_pages, :slug
  end
end
