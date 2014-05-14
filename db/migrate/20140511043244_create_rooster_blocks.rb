class CreateRoosterBlocks < ActiveRecord::Migration
  def change
    create_table :rooster_blocks do |t|
      t.references :blockable, polymorphic: true, index: true
      t.text :content
      t.string :slug
      t.integer :position

      t.timestamps
    end
  end
end
