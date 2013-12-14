class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :phone
      t.string :report_date
      t.text :problem
      t.text :result

      t.timestamps
    end
  end
end
