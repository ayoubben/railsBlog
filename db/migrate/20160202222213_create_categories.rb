class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :code

      t.timestamps null: false
    end
    add_index :categories, :code,                unique: true
  end
end
