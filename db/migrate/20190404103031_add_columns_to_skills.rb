class AddColumnsToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :name, :string
    add_column :skills, :icon, :string
  end
end
