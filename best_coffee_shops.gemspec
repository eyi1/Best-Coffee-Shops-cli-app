require_relative './lib/best_coffee_shops/version'

Gem::Specification.new do |s|
  s.name        = 'best_coffee_shops'
  s.version     = BestCoffeeShops::VERSION
  s.date        = '2018-05-09'
  s.summary     = "Best Coffee Shops in NYC"
  # s.description = "Provides details on the San Pellegrino Worlds 50 Best restaurants"
  s.authors     = ["eyi1"]
  s.email       = 'ej7729@gmail.com'
  s.files       = ["lib/best_coffee_shops.rb", "lib/best_coffee_shops/cli.rb", "lib/best_coffee_shops/scraper.rb", "lib/best_coffee_shops/restaurant.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/best_coffee_shops'
  s.license     = 'MIT'
  s.executables << 'best_coffee_shops'

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 3.0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end


# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "best_coffee_shops/version"

# Gem::Specification.new do |spec|
#   spec.name          = "best_coffee_shops"
#   spec.version       = BestCoffeeShops::VERSION
#   spec.authors       = ["eyi1"]
#   spec.email         = ["ej7729@gmail.com"]

#   spec.summary       = "Best Coffee Shops in NYC"
#   # spec.description   = %q{TODO: Write a longer description or delete this line.}
#   spec.homepage      = "http://rubygems.org/gems/best_coffee_shops"
#   spec.license       = "MIT"

#   # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
#   # to allow pushing to a single host or delete this section to allow pushing to any host.
#   if spec.respond_to?(:metadata)
#     spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
#   else
#     raise "RubyGems 2.0 or newer is required to protect against " \
#       "public gem pushes."
#   end

#   spec.files         = `git ls-files -z`.split("\x0").reject do |f|
#     f.match(%r{^(test|spec|features)/})
#   end
#   spec.bindir        = "exe"
#   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
#   spec.require_paths = ["lib"]

#   spec.add_development_dependency "bundler", "~> 1.16"
#   spec.add_development_dependency "rake", "~> 10.0"
#   spec.add_development_dependency "rspec", "~> 3.0"
#   spec.add_development_dependency "nokogiri", ">= 0"
#   spec.add_development_dependency "pry", ">= 0"
# end
