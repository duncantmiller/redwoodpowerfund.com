require_relative "./helper"

class TestHomepage < Minitest::Test
  context "homepage" do
    setup do
      page = site.collections.pages.resources.find { |doc| doc.relative_url == "/home/" }
      document_root page
    end

    should "exist" do
      assert_select "body"
    end
  end
end
