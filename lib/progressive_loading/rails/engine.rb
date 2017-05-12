require "progressive_loading/helpers/asset_tag_helper"

module ProgressiveLoading
  module Rails
    class Engine < ::Rails::Engine
      initializer 'progressive_loading.helpers' do |app|
        ActiveSupport.on_load :action_controller do
          helper ProgressiveLoading::Helpers::AssetTagHelper
        end
      end
    end
  end
end
