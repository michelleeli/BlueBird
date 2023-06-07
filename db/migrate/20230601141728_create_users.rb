class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end

end

# Additional syntax to add_index directly in create table
      #t.index :username, unique: true
      #t.string :username, null:false, index: (unique: true)  
        #(add index condition when creating col)
        #index: true (if not necessarily unique)
