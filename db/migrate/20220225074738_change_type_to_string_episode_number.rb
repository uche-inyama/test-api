class ChangeTypeToStringEpisodeNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :episodes, :episode_number, 'integer USING CAST(episode_number AS integer)'
  end
end
