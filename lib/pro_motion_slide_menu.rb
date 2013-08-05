require 'motion-cocoapods'
require 'ProMotion'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'pro_motion_slide_menu/**/*.rb')).each do |file|
    app.files << file 
  end
end
