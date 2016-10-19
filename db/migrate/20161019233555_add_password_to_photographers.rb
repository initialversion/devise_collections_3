class AddPasswordToPhotographers < ActiveRecord::Migration[5.0]
  def change
    add_column :photographers, :password, :string
  end
end
