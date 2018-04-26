class CreateAttendings < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings do |t|
      t.decimal :total_sales
      t.string :cx_first_name
      t.string :cx_last_name
      t.integer :cc_number
      t.string :exp_date
      t.integer :user_id, index: true
      t.integer :movie_id, index: true
      t.timestamps
    end
  end
end
