Gem::Specification.new do |s|
  s.name        = 'br-phone'
  s.version     = '0.1.3'
  s.date        = '2016-11-18'
  s.summary     = "Phone generator for pt-BR!"
  s.description = "A generator of phones to pt-BR conditions!"
  s.authors     = ["Fabian Carlos"]
  s.email       = 'fabian.pow@gmail.com'
  s.files       = ["lib/br-phone.rb"]
  s.homepage    = 'http://rubygems.org/gems/br-phone'
  s.license     = 'MIT'
  s.files       = ["lib/br-phone.rb"]
  s.executables << 'br-phone'
  
  s.required_ruby_version = '>= 2.2.2'
  
  s.add_development_dependency("rspec", '~> 3.5.0', '>= 3.5.0')
end