require_relative "helper"

class TestBlog < Minitest::Test
  context "blog" do
    setup do
      page = site.collections.pages.resources.find { |doc| doc.relative_url == "/blog/" }
      document_root page
    end

    should "exist" do
      assert_select "body", true, "Page should exist with a <body> element"
    end

    should "display blog titles" do
      assert_select "h2 a", true, "Blog titles should be present and contained within <h2> tags"
    end

    should "display post dates" do
      assert_select "time", true, "Post dates should be present within time elements"
    end

    should "include post links for each blog entry" do
      assert_select "article a", true, "Each blog entry should have at least one link"
    end
  end
end
