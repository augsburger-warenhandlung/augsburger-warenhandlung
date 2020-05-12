activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

activate :livereload
activate :sprockets
activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

# Middleman fails to reload helpers, although it notices their modification
# This force-reloads them
Dir['helpers/*'].each(&method(:load))

# Disable warnings
set :haml, format: :html5
set :fonts_dir, 'fonts'
Haml::TempleEngine.disable_option_validator!
