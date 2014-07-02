require 'minitest/autorun'
require 'css-flags'

def render_sass(scss)
  options  = {
    :syntax     => :scss,
    :cache      => false,
    :read_cache => false
  }
  Sass::Engine.new(scss, options).render
end

def assert_sass(scss, css)
  result = render_sass(scss)
  result.gsub! %r(@charset "UTF-8";), ''
  result.strip.gsub(/\s+/, ' ').must_equal css.strip.gsub(/\s+/, ' ').strip
end

