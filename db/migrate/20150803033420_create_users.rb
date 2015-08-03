class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
