class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :plot
      t.integer :number, :default => 0
      t.boolean :purchased
      t.decimal :price
      t.string :video_quality

      t.timestamps
    end
  end
end
