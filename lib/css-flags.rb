require 'quotation-marks/version'

module CssFlags
end

base_directory = File.join(File.dirname(__FILE__), '..')

require 'sass'
ENV['SASS_PATH'] ||= ''
ENV['SASS_PATH'] = ENV['SASS_PATH'] + File::PATH_SEPARATOR + File.join(base_directory, 'stylesheets')

