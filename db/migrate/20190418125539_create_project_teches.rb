class CreateProjectTeches < ActiveRecord::Migration[5.2]
  def change
    create_table :project_teches do |t|
      t.references :project, foreign_key: true
      t.references :technology, foreign_key: true

      t.timestamps
    end
  end
end
