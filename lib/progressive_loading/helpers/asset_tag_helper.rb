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
          data[:style] = options[:style]
          options[:data] = data
          options[:class] = options[:class].to_s + " progressive_loading"
					source = options[:progressive]
        end

        super(source, options)
      end
    end
  end
end
