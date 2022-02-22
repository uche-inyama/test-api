class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :title
      t.string :content
      t.boolean :status

      t.timestamps
    end
  end
end
