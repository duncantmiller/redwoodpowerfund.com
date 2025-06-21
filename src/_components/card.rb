class Card < Bridgetown::Component
  def initialize(as: "div", css_class: nil, **options)
    @as = as
    @css_class = css_class
    @options = options
  end

  private

  attr_reader :as, :css_class
end
