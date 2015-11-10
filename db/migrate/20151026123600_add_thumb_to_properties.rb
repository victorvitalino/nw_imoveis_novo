class AddThumbToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :thumb, :string
  end
end
