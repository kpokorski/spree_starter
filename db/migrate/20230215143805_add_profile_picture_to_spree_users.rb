class AddProfilePictureToSpreeUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :spree_users, :profile_picture, :string
  end
end
