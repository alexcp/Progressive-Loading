module ProgressiveLoading
  module Helpers
    module AssetTagHelper
      include ActionView::Helpers::AssetTagHelper

      def image_tag(source, options={})
        options = options.symbolize_keys

        src = options[:src] = path_to_image(source)

        if options.has_key?(:progressive)
          data = options[:data] || {}
          data[:src] = src
          options[:data] = data
          options[:class] = options[:class].to_s + " progressive_loading"
          source = "https://placeholdit.imgix.net/~text?txtsize=33&txt=50%C3%9750&w=10&h=10"
        end

        super(source, options)
      end
    end
  end
end
