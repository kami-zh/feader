class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, foreign_key: true, null: false
      t.string :url, null: false
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
