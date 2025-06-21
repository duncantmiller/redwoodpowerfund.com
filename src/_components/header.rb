class Header < Bridgetown::Component
  def initialize(**options)
    @options = options
  end

  private

  def is_home_page?
    resource&.url == "/"
  end

  def navigation_items
    [
      { name: "Home", href: "/" },
      { name: "Blog", href: "/blog" },
      { name: "Projects", href: "/projects" },
      { name: "Contact", href: "/contact" }
    ]
  end
end
