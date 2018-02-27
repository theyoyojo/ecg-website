class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :start_year
      t.string :csv_tags
      t.string :short_desc
      t.string :long_desc
      t.string :website
      t.string :github

      t.timestamps
    end
  end
end
