class CreateRoosterImages < ActiveRecord::Migration
  def change
    create_table :rooster_images do |t|
      t.string :asset
      t.integer :created_by, index: true
      t.string :description, limit: 500
      t.string :title, limit: 500
      t.string :alt, limit: 500
      t.string :height
      t.string :width

      t.timestamps
    end
  end
end
