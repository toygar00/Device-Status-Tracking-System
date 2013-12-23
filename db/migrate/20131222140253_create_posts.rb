class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :phone
      t.string :report_date
      t.string :username
      t.text :problem
      t.text :result

      t.references :user

      t.timestamps
    end
    add_index :posts, :user_id
  end
end

