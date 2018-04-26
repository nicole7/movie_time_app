class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :cc
      t.sring :exp_date
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
