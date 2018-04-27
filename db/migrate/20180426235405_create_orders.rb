class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings do |t|
      t.string :cx_first_name
      t.string :cx_last_name
      t.integer :cc_number
      t.string :exp_date
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end
