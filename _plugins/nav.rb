module Jekyll
  class DirectoryNavGenerator < Generator

    def generate(site)
      base_path = File.join(site.source, '_doc')
      nav_items = generate_nav_items(base_path)
      site.data['nav_items'] = nav_items
    end

    private

    def generate_nav_items(path, parent_path = '')
      items = []
      Dir.foreach(path) do |entry|
        next if entry == '.' || entry == '..'
        full_path = File.join(path, entry)
        relative_path = File.join(parent_path, entry)
        if File.directory?(full_path)
          subitems = generate_nav_items(full_path, relative_path)
          items << {
            'title' => entry,
            'url' => "/doc/#{relative_path}/",
            'children' => subitems
          } unless subitems.empty?
        end
      end
      items.sort_by { |item| item['title'] }
    end
  end

end