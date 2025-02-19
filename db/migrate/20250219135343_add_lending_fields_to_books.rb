class AddLendingFieldsToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :available, :boolean, default: true
    add_column :books, :borrower_name, :string
    add_column :books, :borrowed_at, :datetime
  end
end
