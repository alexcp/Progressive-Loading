module ProgressiveLoading
  module Helpers
    module AssetTagHelper
      include ActionView::Helpers::AssetTagHelper

      def image_tag(source, options={})
        options = options.symbolize_keys

        src = options[:src] = path_to_image(source)

        if options.has_key?(:progressive)
          # keep the original image src in data attributes
          data = options[:data] || {}
          data[:src] = src
          data[:style] = options[:style] if options[:style]

          if options[:progressive].is_a?(String)
            source = options[:progressive]
          else
            if options[:progressive][:size]
              data[:progressive_size] = options[:progressive][:size]
            end
            if options[:progressive][:src]
              source = options[:progressive][:src]
            elsif options[:progressive][:color]
              color = options[:progressive][:color]
              svg =  Base64.encode64("<svg height=\"1000\" version=\"1.1\" width=\"1000\" xmlns=\"http://www.w3.org/2000/svg\"><rect x=\"0\" y=\"0\" width=\"1000\" height=\"1000\" r=\"0\" rx=\"0\" ry=\"0\" fill=\"#{color}\"></rect></svg>")
              source = "data:image/svg+xml;base64,#{svg}"
            end
          end

          options.delete(:progressive)
          options[:data] = data
          options[:class] = options[:class].to_s + " progressive_loading"
        end

        super(source, options)
      end
    end
  end
end
