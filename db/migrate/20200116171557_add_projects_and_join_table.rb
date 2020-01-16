class AddProjectsAndJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      # We can use t.string instead of t.column. This means we don't need to do this: t.column (:name, :string)
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :employees_projects, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :employee, index: true
    end
  end
end
