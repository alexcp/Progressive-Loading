# ProgressiveLoading

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/progressive_loading`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/progressive_loading.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

