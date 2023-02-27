module MyStore
  module Spree
    module UsersControllerDecorator
      #user.profile_picture.attach(params[:profile_picture]) if params[:profile_picture]

      def user_params


        params.require(:user).permit(permitted_user_attributes.append(:profile_picture) |
                                       [:use_billing,
                                        spree_role_ids: [],
                                        ship_address_attributes: permitted_address_attributes,
                                        bill_address_attributes: permitted_address_attributes])
      end
    end
  end
end

::Spree::Admin::UsersController.prepend MyStore::Spree::UsersControllerDecorator if ::Spree::Admin::UsersController.included_modules.exclude?(MyStore::Spree::UsersControllerDecorator)
