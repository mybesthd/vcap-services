require "rspec"
require "yaml"
require "yajl"
require "httpclient"
require "json"
require "active_support/core_ext"

SPEC_ROOT = File.expand_path(File.dirname(__FILE__))
ASSETS_DIR = File.join(SPEC_ROOT, "assets")
BOSH_ROOT_DIR = File.expand_path File.join(SPEC_ROOT, "..")
BOSH_TMP_DIR = File.expand_path File.join(BOSH_ROOT_DIR, "tmp")

Dir.glob("#{SPEC_ROOT}/support/**/*.rb") do |filename|
  require filename
end

RSpec.configure do |c|
  c.include IntegrationExampleGroup, :type => :integration, :example_group => {:file_path => /\/integration\//}
end
