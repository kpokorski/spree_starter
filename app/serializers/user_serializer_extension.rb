class UserSerializerExtension < Spree::V2::Storefront::UserSerializer

  attribute :profile_picture do |picture|
    # sprawdz jaki obiekt dokladnie jest w `picture` czy User
    ActiveStorage::Blob.service.path_for(picture.key)
  end

end
