# ruby update_index.rb

require 'nokogiri'

# Path to your main index.html file
index_file_path = 'index.html'

# Read the existing index.html content
index_html = File.read(index_file_path)
doc = Nokogiri::HTML(index_html)

# Extract existing links from index.html
existing_links = doc.css('#toc a').map { |link| link['href'] }

# Collect new links to add
new_links = []

# Scan the root directory for subdirectories containing index.md
Dir.glob('*/index.md').each do |md_path|
    dir = File.dirname(md_path)
    html_path = "#{dir}/index.html"

    unless existing_links.include?(html_path)
        link_text = dir.split('-').map(&:capitalize).join(' ')
        new_links << "    <li><a href='#{html_path}'>#{link_text}</a></li>"
        puts "Added link for #{html_path}"
    end
end

# Append new links if any
if new_links.any?
    toc = doc.at_css('#toc')
    new_links.each do |link|
        toc.add_child(Nokogiri::HTML::DocumentFragment.parse(link + "\n"))
    end

    # Write the updated content back to index.html with proper indentation
    File.open(index_file_path, 'w') do |file|
        file.write(doc.to_html(indent: 2))
    end
else
    puts "No new links to add."
end