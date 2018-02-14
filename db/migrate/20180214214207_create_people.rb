class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :grad_year
      t.string :degree
      t.string :position
      t.string :email
      t.string :linkedin
      t.string :github
      t.string :website

      t.timestamps
    end
  end
end
