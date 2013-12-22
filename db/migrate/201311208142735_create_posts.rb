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

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end

