class AddPublishedToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :published, :boolean, :default => false, :null => false
    add_column :projects, :published_at, :datetime
  end
end
