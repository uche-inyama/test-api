class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :plot
      t.string :episode_number
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
