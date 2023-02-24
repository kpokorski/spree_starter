class UserSerializerExtension < Spree::V2::Storefront::UserSerializer
  set_type :user

  attributes :profile_picture, :imm


end
