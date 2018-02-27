class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :author
      t.date :published_on
      t.string :csv_tags
      t.string :text_link
      t.string :text_link_type

      t.timestamps
    end
  end
end
