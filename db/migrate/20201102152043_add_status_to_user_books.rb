class AddStatusToUserBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :user_books, :reading_status, :string
  end
end
