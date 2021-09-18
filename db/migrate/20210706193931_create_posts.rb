class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.references :user, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
