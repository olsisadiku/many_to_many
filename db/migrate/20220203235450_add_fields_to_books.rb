class AddFieldsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :float
    add_column :books, :Date, :date
  end
end
