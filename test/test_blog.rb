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

    should "display blog titles when posts exist" do
      published_posts = site.collections.posts.resources.select { |post| post.data.published != false }
      if published_posts.any?
        assert_select "h2 a", true, "Blog titles should be present and contained within <h2> tags when posts exist"
      else
        # When no published posts exist, we shouldn't expect blog title elements
        assert_select "h2 a", false, "No blog titles should be present when no posts are published"
      end
    end

    should "display post dates when posts exist" do
      published_posts = site.collections.posts.resources.select { |post| post.data.published != false }
      if published_posts.any?
        assert_select "time", true, "Post dates should be present within time elements when posts exist"
      else
        # When no published posts exist, we shouldn't expect time elements for posts
        assert_select "article time", false, "No post dates should be present when no posts are published"
      end
    end

    should "include post links when blog entries exist" do
      published_posts = site.collections.posts.resources.select { |post| post.data.published != false }
      if published_posts.any?
        assert_select "article a", true, "Each blog entry should have at least one link when posts exist"
      else
        # When no published posts exist, we shouldn't expect article links
        assert_select "article a", false, "No post links should be present when no posts are published"
      end
    end
  end
end
