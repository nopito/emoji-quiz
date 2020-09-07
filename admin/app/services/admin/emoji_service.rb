module Admin
  class EmojiService
    include Godmin::Resources::ResourceService

    attrs_for_index :name, :image_url
    attrs_for_show :name, :image_url
    attrs_for_form :name, :image_url

  end
end
