class AddAgeAndPaToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :political_affiliation, :string
  end
end
