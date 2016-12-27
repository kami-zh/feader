class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :subscription, foreign_key: true, null: false
      t.string :url, null: false
      t.string :title
      t.text :description
      t.datetime :published_at
      t.datetime :read_at

      t.timestamps
    end
  end
end
