class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :created_at
      t.references :place, foreign_key: true
      t.timestamps
    end
  end
end
