class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      t.timestamps
      t.integer :user_id
      t.text :body
      t.string :title
    end
  end
end
