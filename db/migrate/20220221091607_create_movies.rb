class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :plot
      t.boolean :purchased
      t.integer :price
      t.string :video_quality

      t.timestamps
    end
  end
end
