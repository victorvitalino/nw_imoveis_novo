class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image_path
      t.integer :location
      t.integer :order
      t.string :link
      t.string :name
      t.string :status

      t.timestamps null: false
    end
  end
end
