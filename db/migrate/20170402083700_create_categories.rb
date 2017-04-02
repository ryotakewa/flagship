class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.string  :name, length: ApplicationRecord::Length::TITLE, nil: false

      t.timestamps null: false
    end
  end
end
