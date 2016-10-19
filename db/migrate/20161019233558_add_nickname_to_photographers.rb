class AddNicknameToPhotographers < ActiveRecord::Migration[5.0]
  def change
    add_column :photographers, :nickname, :string
  end
end
