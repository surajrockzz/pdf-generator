Shrimp.configure do |config|

  # The path to the phantomjs executable
  # defaults to `where phantomjs`
  #config.phantomjs = '/usr/local/bin/phantomjs'

  # the default pdf output format
  # e.g. "5in*7.5in", "10cm*20cm", "A4", "Letter"
  config.format           = 'A4'

  # the default margin
  config.margin           = '0'

  # the zoom factor
  config.zoom             = 1

  # the page orientation 'portrait' or 'landscape'
  config.orientation      = 'portrait'

  # a temporary dir used to store tempfiles
  # config.tmpdir           = Dir.tmpdir

  # the default rendering time in ms
  # increase if you need to render very complex pages
  config.rendering_time   = 6000

  # change the viewport size.  If you rendering pages that have
  # flexible page width and height then you may need to set this
  # to enforce a specific size
  # config.viewport_width = 1020
  # config.viewport_height = 1442

  # the timeout for the phantomjs rendering process in ms
  # this needs always to be higher than rendering_time
  # config.rendering_timeout       = 90000

  # the path to a json configuration file for command-line options
  config.command_config_file = "#{Rails.root.join('config', 'shrimp_config.json')}"
end
