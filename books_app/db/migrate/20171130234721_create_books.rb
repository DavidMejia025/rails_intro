class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.date :release

      t.timestamps
    end
  end
end
