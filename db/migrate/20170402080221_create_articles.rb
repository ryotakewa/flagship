class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.references :category, foregin_key: true, null: false

      t.string     :title      , length: ApplicationRecord::Length::TITLE, nil: false
      t.text       :description, length: ApplicationRecord::Length::TITLE
      t.text       :text       , length: ApplicationRecord::Length::TEXT
      t.string     :photo      , length: ApplicationRecord::Length::PHOTO

      t.timestamps null: false
    end
  end
end
