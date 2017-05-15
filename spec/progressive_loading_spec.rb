require 'spec_helper'

describe ProgressiveLoading do
  it 'has a version number' do
    expect(ProgressiveLoading::VERSION).not_to be nil
  end

  describe ApplicationHelper, type: :helper do
    describe "#image_tag" do
      context "when used normally" do
        it "returns image tag" do
          expect(helper.image_tag("image.jpg", class: "test")).to eq("<img class=\"test\" src=\"/assets/image-af8d03c3e231c37e0fcf1985c9df685a557c1feef26002b337e3cb3ef1879b16.jpg\" alt=\"Image\" />")
        end
      end
      context "when passing progressive option" do
        it "should replace source with provided image" do
          expect(
            helper.image_tag("image.jpg", class: "test", progressive: "thumb.jpg")
          ).to eq("<img class=\"test progressive_loading\" src=\"/images/thumb.jpg\" data-src=\"/assets/image-af8d03c3e231c37e0fcf1985c9df685a557c1feef26002b337e3cb3ef1879b16.jpg\" alt=\"Thumb\" />")
        end
        it "should render svg when a color is passed" do
          expect(
            helper.image_tag("image.jpg", class: "test", progressive: {color: "#000"})
          ).to include('src="data:image/svg+xml;base64')
        end
      end
    end
  end
end
