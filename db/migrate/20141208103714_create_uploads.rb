class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :file
      t.string :name, default: "New_Photo"
      t.string :description, default: "No description"

      t.belongs_to :album
      t.timestamps

    end
  end
end
