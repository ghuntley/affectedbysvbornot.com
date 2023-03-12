#!/usr/bin/env ruby
# Command-line interface to the kramdown-tablerize gem.

if ARGV.empty?
  $stderr.puts "usage: #{$PROGRAM_NAME} path/to/document.md [...]"
  exit 1
end

require 'kramdown-tablerize'

ARGV.each do |path|
  puts Kramdown::Document.new(File.read(path), input: 'KramdownYamlTablerize').to_html
end