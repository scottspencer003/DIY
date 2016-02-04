class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :materials
      t.string :user_id

      t.timestamps null: false
    end
  end
end
