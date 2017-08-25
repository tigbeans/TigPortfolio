class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :percent_complete
      t.text :content
      t.string :card_image_url
      t.date :start_date
      t.date :projected_end_date
      t.string :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
