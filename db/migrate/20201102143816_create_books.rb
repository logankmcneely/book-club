class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :goodreads_id
      t.string :title

      t.timestamps
    end
  end
end
