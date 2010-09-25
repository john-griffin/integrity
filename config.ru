require "init"
use Rack::Auth::Basic do |user, pass|
  user == ENV["USER"] && pass == ENV["PASS"]
end
run Integrity.app
