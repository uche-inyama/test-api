class ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :seasons, :price, 'decimal USING CAST(price AS decimal)'
  end
end
