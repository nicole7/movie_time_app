class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :time
      t.integer :limit
      t.boolean :sold_out?, default: false
      t.timestamps
    end
  end
end
