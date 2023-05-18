class CreatePlaces < ActiveRecord::Migration[6.1]
  def up
    create_table :places do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :places
  end
end

class CreatePosts < ActiveRecord::Migration[6.1]
  def up
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :created_at
      t.references :place, foreign_key: true
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end