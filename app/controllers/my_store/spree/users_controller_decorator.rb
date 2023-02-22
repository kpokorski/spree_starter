module MyStore
  module Spree
    module UsersControllerDecorator
      #user.profile_picture.attach(params[:profile_picture]) if params[:profile_picture]

      def user_params

        permitted_user_attributes.append(:profile_picture)
      end
    end
  end
end

::Spree::Admin::UsersController.prepend MyStore::Spree::UsersControllerDecorator if ::Spree::Admin::UsersController.included_modules.exclude?(MyStore::Spree::UsersControllerDecorator)
