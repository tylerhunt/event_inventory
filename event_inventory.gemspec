Gem::Specification.new do |gem|
  gem.name    = 'event_inventory'
  gem.version = '0.0.1'
  gem.summary = 'An interface library for the Event Inventory web service.'
  gem.homepage = %q{http://github.com/tylerhunt/event_inventory}
  gem.authors = ['Tyler Hunt']

  gem.files = Dir['lib/**/*']
  gem.add_dependency 'activesupport', '>= 3.0.0.beta4'
  gem.add_dependency 'patron', '0.4.6'
  gem.add_dependency 'sax-machine', '0.0.15'
end
