class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :title
      t.integer :order, default: 0
      t.string :image_path
      t.integer :code, default: 0
      t.boolean :status, default: true
      t.string  :link
      t.timestamps null: false

    end
  end
end
