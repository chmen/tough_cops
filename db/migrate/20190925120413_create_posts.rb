class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.boolean :spam
      t.string :title
      t.text :text
      t.integer :like
      t.integer :dislike
      t.float :spam_rate

      t.timestamps
    end
  end
end
