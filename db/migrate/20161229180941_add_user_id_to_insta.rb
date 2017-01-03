class AddUserIdToInsta < ActiveRecord::Migration
  def change
    add_column :insta, :user_id, :integer
  end
end
