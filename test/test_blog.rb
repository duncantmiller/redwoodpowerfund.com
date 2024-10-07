require_relative "helper"

class TestBlog < Minitest::Test
  context "blog" do
    setup do
      @site = Bridgetown::Site.new(Bridgetown.configuration)
      @site.process

      @pages = @site.generated_pages.select { |page| page.relative_url.start_with?("/blog") }
      # Optionally, test only the first page or iterate through all pages
      document_root @pages.first  # This will select the first page (or adjust if testing paginated pages)
    end

    should "exist" do
      assert_select "body", true, "Page should exist with a <body> element"
    end

    should "display blog titles" do
      @pages.each do |page|
        document_root page
        assert_select "h3 a", true, "Blog titles should be present and contained within <h3> tags"
      end
    end

    should "display author names" do
      @pages.each do |page|
        document_root page
        assert_select ".text-sm a", true, "Author names should be present and contained within the specified selector"
      end
    end

    should "include post images for each blog entry" do
      @pages.each do |page|
        document_root page
        assert_select "article a img", true, "Each blog entry should have at least one post image within an anchor tag"
      end
    end

    should "include author images for each blog entry" do
      @pages.each do |page|
        document_root page
        assert_select "article img.rounded-full", true, "Each blog entry should have at least one author image with 'rounded-full' class"
      end
    end

    should "include pagination links" do
      assert_select "a", /\d+/, "Page numbers should be displayed"
    end
  end
end
