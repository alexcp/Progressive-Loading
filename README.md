# ProgressiveLoading

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'progressive_loading'
```

And then execute:

    $ bundle

## Usage

Add this option to an image_tag `progressive: thumbnail_path` where image_path is the path to this image's thumbnail.

Example: `<%= image_tag "image.jpg", class: "img-thumbnail", progressive: "image-tiny.jpg" %>`

## Options

If you are rendering multiple images without a fixed dimension, you can see the content flashing when rendering the High Quality version of image.
You can add the options size: :fixed, to the force the image dimension to the element.

Example: `<%= image_tag "image.jpg", class: "img-thumbnail", width: 260, height: 170, progressive: {src: "image-tiny.jpg", size: :fixed} %>`

Instead of an image placeholder, you can use a solid color, replace the src option with a color like so:

Example: `<%= image_tag "image.jpg", class: "img-thumbnail", width: 260, height: 170, progressive: {color: "#dcdcdc", size: :fixed} %>`
