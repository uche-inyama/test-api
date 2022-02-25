class ChangeStatusToString < ActiveRecord::Migration[6.1]
  def change
    change_column :libraries, :status, 'varchar USING CAST(status AS varchar)'
  end
end
