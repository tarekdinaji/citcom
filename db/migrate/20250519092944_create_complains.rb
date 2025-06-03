class CreateComplains < ActiveRecord::Migration[8.0]
  def change
    create_table :complains do |t|
      t.string :title
      t.text :details
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
