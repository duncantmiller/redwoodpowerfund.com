class Container < Bridgetown::Component
  def initialize(outer_class: nil, inner_class: nil, **options)
    @outer_class = outer_class
    @inner_class = inner_class
    @options = options
  end

  private

  def outer_classes
    classes = ["sm:px-8"]
    classes << @outer_class if @outer_class
    classes.join(" ")
  end

  def inner_classes
    classes = ["relative px-4 sm:px-8 lg:px-12"]
    classes << @inner_class if @inner_class
    classes.join(" ")
  end
end
