require 'rubygems'
require 'middleman/rack'
require 'rack/contrib/try_static"

use Rack::TryStatic, :root => "build", :urls => %w[/], :try => ['.html']

run Middleman.server