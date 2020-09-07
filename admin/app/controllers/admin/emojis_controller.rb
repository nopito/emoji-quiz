module Admin
  class EmojisController < ApplicationController
    include Godmin::Resources::ResourceController

    def resource_params
      params.require(:emoji).permit(
        :name,
        :image_url
      )
    end
  end
end
