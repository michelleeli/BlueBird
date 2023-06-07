class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :liker, foreign_key: { to_table: :users }, null: false, index: true
      t.references :chirp, foreign_key: true, null: false, index: true
      t.timestamps
    end

    add_index :likes, [:liker_id, :chirp_id], unique: true
  end
end
