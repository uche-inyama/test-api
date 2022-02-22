class AddValidityToLibraries < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :validity, :time, default: Time.now + 48.hours
  end
end
