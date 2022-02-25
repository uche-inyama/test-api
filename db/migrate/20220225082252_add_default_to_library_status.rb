class AddDefaultToLibraryStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :libraries, :status, :string, :default => 'inactive'
  end
end
