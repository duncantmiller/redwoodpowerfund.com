require_relative "./helper"

class TestBlog < Minitest::Test
  context "blog" do
    setup do
      page = site.collections.pages.resources.find { |page| page.relative_url == "/blog/" }
      document_root page
    end

    should "exist" do
      assert_select "body"
    end

    should "display blog titles" do
      assert_select 'h3 a', true, "Blog titles should be present and contained within <h3> tags"
    end

    should "display author names" do
      assert_select '.text-sm a', true, "Author names should be present and contained within the specified selector"
    end

    should "include post images for each blog entry" do
      # Simplified selector that Nokogiri can understand
      assert_select 'article a img', true, "Each blog entry should have at least one post image within an anchor tag"
    end

    should "include author images for each blog entry" do
      # Ensure this selector is correct and points to the existing elements in the HTML
      assert_select 'article img.rounded-full', true, "Each blog entry should have at least one author image with 'rounded-full' class"
    end
  end
end
