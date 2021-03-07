class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name_project
      t.text :description
      t.date :start_on
      t.date :finish_on
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
