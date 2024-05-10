class Builders::RemoteContentTag < SiteBuilder
  def build
    liquid_tag "remote_md", :render_remote_markdown
  end

  def render_remote_markdown(attributes, tag)
    require "faraday"

    # Extract the URL from attributes or fallback to a default
    url = attributes.strip

    # Fetch the content using Faraday
    response = Faraday.get(url)
    if response.success?
      response.body
    else
      "<p>Could not fetch external content</p>"
    end
  end
end
