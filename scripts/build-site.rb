# frozen_string_literal: true

require "bundler/setup"
require "fileutils"

root = File.expand_path("..", __dir__)
destination = File.join(root, "_site")
jekyll = Gem.bin_path("jekyll", "jekyll")

Dir.chdir(root) do
  # Build separately so each site keeps its own layouts, data and styles.
  system(Gem.ruby, jekyll, "build", "--source", root,
         "--config", File.join(root, "_config.yml"),
         "--destination", destination, exception: true)
  system(Gem.ruby, jekyll, "build", "--source", File.join(root, "zx-resume"),
         "--config", File.join(root, "zx-resume", "_config.yml"),
         "--destination", File.join(destination, "zx-resume"), exception: true)

  # Root Gemfile.lock is ignored by Git, but must not leak into the published site.
  FileUtils.rm_f(File.join(destination, "Gemfile.lock"))
  File.write(File.join(destination, ".nojekyll"), "")

  %w[index.html zx-resume/index.html zx-resume/css/main.css].each do |path|
    raise "Missing build output: #{path}" unless File.file?(File.join(destination, path))
  end
  %w[projects scripts zx-resume/CNAME zx-resume/Gemfile.lock].each do |path|
    raise "Unexpected published source: #{path}" if File.exist?(File.join(destination, path))
  end
end

puts "Website built successfully: #{destination}"
