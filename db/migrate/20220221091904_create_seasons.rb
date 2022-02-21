class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.string :plot
      t.string :number
      t.boolean :purchased
      t.string :price
      t.string :video_quality

      t.timestamps
    end
  end
end
