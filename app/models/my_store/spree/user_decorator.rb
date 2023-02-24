module MyStore
  module Spree
    module UserDecorator

      def self.prepended(base)

        base.has_one_attached :profile_picture
        base.validates :profile_picture, content_type: ["image/png", "image/jpeg"]

      end

    end
  end
end

::Spree::User.prepend MyStore::Spree::UserDecorator if ::Spree::User.included_modules.exclude?(MyStore::Spree::UserDecorator)
