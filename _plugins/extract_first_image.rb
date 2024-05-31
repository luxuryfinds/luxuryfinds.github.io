module Jekyll
  class ExtractFirstImage < Generator
    def generate(site)
      site.posts.docs.each do |post|
        first_image = post.content.match(/!\[.*?\]\((.*?)\)/)
        if first_image
          post.data['thumbnail'] ||= first_image[1]
        end
      end
    end
  end
end
