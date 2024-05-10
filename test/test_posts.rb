require 'yaml'
require_relative "./helper"

class TestBlogPosts < Minitest::Test
  context "all blog posts" do
    setup do
      @posts_dir = File.join(__dir__, '../src/_posts')
      @post_files = Dir.glob(File.join(@posts_dir, '*.md'))
    end

    should "specify an image in the front matter for each post" do
      @post_files.each do |file_path|
        content = File.read(file_path)
        front_matter = content.match(/---\s*\n(.*?)---/m)[1]
        data = YAML.load(front_matter)
        assert data, "Front matter should be present in #{File.basename(file_path)}"
        assert data['image'], "Image should be specified in the front matter of #{File.basename(file_path)}"
        refute_empty data['image'], "Image path should not be empty in #{File.basename(file_path)}"
      end
    end

    should "specify an author in the front matter for each post" do
      @post_files.each do |file_path|
        content = File.read(file_path)
        front_matter = content.match(/---\s*\n(.*?)---/m)[1]
        data = YAML.load(front_matter)
        assert data, "Front matter should be present in #{File.basename(file_path)}"
        assert data['author'], "Author should be specified in the front matter of #{File.basename(file_path)}"
        refute_empty data['author'], "Author should not be empty in #{File.basename(file_path)}"
      end
    end

    should "specify a layout in the front matter for each post" do
      @post_files.each do |file_path|
        content = File.read(file_path)
        front_matter = content.match(/---\s*\n(.*?)---/m)[1]
        data = YAML.load(front_matter)
        assert data, "Front matter should be present in #{File.basename(file_path)}"
        assert data['layout'], "Layout should be specified in the front matter of #{File.basename(file_path)}"
        refute_empty data['layout'], "Layout should not be empty in #{File.basename(file_path)}"
      end
    end

    should "specify a description in the front matter for each post" do
      @post_files.each do |file_path|
        content = File.read(file_path)
        front_matter = content.match(/---\s*\n(.*?)---/m)[1]
        data = YAML.load(front_matter)
        assert data, "Front matter should be present in #{File.basename(file_path)}"
        assert data['description'], "Description should be specified in the front matter of #{File.basename(file_path)}"
        refute_empty data['description'], "Description should not be empty in #{File.basename(file_path)}"
      end
    end
  end
end
