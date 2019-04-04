class CreateDownloads < ActiveRecord::Migration[5.2]
  def change
    create_table :downloads do |t|
      t.string :name
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
