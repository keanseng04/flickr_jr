class CreateAlbums < ActiveRecord::Migration
  def change
      create_table :albums do |t|
      t.string :name, default: "New_Album"
      t.string :description, default: "No description"
      t.timestamps

      t.belongs_to :user
    end
  end
end
