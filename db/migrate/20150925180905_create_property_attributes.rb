class CreatePropertyAttributes < ActiveRecord::Migration
  def change
    create_table :property_attributes do |t|

      t.timestamps null: false
    end
  end
end
