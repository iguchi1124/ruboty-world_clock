lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/world_clock/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-world_clock'
  spec.version       = Ruboty::WorldClock::VERSION
  spec.authors       = ['Shota Iguchi']
  spec.email         = ['shota-iguchi@cookpad.com']

  spec.summary       = 'Show world clock which you want to see.'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'ruboty'
end
