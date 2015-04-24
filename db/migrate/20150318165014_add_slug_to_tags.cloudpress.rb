# This migration comes from cloudpress (originally 20150317121651)
class AddSlugToTags < ActiveRecord::Migration
  def change
    add_column :tags, :slug, :string
    add_index :tags, :slug, unique: true
  end
end
