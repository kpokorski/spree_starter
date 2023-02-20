class ChangeStringToBeAttachmentInUserProfilePicture < ActiveRecord::Migration[7.0]
  def change
    change_column :spree_users, :profile_picture, :attachment
  end
end
