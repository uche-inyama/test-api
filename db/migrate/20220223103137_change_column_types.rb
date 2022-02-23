class ChangeColumnTypes < ActiveRecord::Migration[6.1]
  def change
    change_column :seasons, :number, 'integer USING CAST(number AS integer)'
  end
end
