class CreateAttendings < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings do |t|
      t.integer :user_id, index: true
      t.integer :movie_id, index: true
      t.decimal :total_sales
      t.timestamps
    end
  end
end
