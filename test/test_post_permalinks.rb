require "yaml"
require_relative "helper"

class TestPostPermalinks < Minitest::Test
  # Snapshot of canonical URLs. If a post's categories or filename changes, the computed
  # URL will differ and this test will fail. Before updating the snapshot, add a redirect
  # from the old URL to the new one (src/_redirects or Netlify config).
  PERMALINK_SNAPSHOT = {
    "2025-01-23-the-startup-lottery-why-vc-money-can-be-a-curse.md" =>
      "/startups/venture-capital/bootstrapping/2025/01/23/the-startup-lottery-why-vc-money-can-be-a-curse/",
    "2025-11-03-the-pitfalls-of-investing-in-vacation-property.md" =>
      "/investing/2025/11/03/the-pitfalls-of-investing-in-vacation-property/",
    "2026-04-04-is-your-automation-vendor-actually-building-for-you-or-for-their-next-investor.md" =>
      "/startups/robotics/manufacturing/bootstrapping/2026/04/04/is-your-automation-vendor-actually-building-for-you-or-for-their-next-investor/",
  }.freeze

  context "post permalinks" do
    setup do
      @posts_dir = File.join(__dir__, "../src/_posts")
      @standard_posts = Dir.glob(File.join(@posts_dir, "*.md")).select do |f|
        File.basename(f) =~ /^\d{4}-\d{2}-\d{2}-[^\s]+\.md$/
      end
    end

    should "match the permalink snapshot — add a redirect before updating if this fails" do
      PERMALINK_SNAPSHOT.each do |filename, expected_url|
        file_path = File.join(@posts_dir, filename)
        content = File.read(file_path)
        front_matter_match = content.match(/---\s*\n(.*?)---/m)
        assert front_matter_match, "Front matter missing in #{filename}"

        data = YAML.safe_load(front_matter_match[1], permitted_classes: [Date, Time])
        computed = compute_pretty_permalink(filename, data)

        assert_equal expected_url, computed,
          "URL for '#{filename}' has changed!\n" \
          "  Was:  #{expected_url}\n" \
          "  Now:  #{computed}\n" \
          "Add a redirect from the old URL before updating PERMALINK_SNAPSHOT in this file."
      end
    end

    should "have a snapshot entry for every standard post file" do
      @standard_posts.each do |file_path|
        filename = File.basename(file_path)
        assert PERMALINK_SNAPSHOT.key?(filename),
          "No permalink snapshot for '#{filename}'.\n" \
          "Add it to PERMALINK_SNAPSHOT in test/test_post_permalinks.rb so URL changes are caught."
      end
    end
  end

  private

  def compute_pretty_permalink(filename, data)
    match = File.basename(filename, ".md").match(/^(\d{4})-(\d{2})-(\d{2})-(.+)$/)
    return nil unless match

    year, month, day, slug = match[1], match[2], match[3], match[4]
    categories = Array(data["categories"])

    "/" + (categories + [year, month, day, slug, ""]).join("/")
  end
end
