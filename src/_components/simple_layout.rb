class SimpleLayout < Bridgetown::Component
  def initialize(title:, intro: nil, **options)
    @title = title
    @intro = intro
    @options = options
  end

  private

  attr_reader :title, :intro
end
