class CreateBooksAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors_books do |t|
      t.belongs_to :author
      t.belongs_to :book
      t.date :birth_date
    end
  end
end
