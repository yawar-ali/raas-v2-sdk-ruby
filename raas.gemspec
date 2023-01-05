Gem::Specification.new do |s|
  s.name = 'tangocard-raas'
  s.version = '2.3.1'
  s.summary = 'Tango Card RaaS v2 SDK'
  s.description = 'With this RESTful API you can integrate a global reward or incentive program into your app or platform. If you have any questions or if you would like to receive your own credentials, please contact us at devsupport@tangocard.com.'
  s.authors = ['Tango Card, Inc.']
  s.email = 'devsupport@tangocard.com'
  s.homepage = 'https://www.tangocard.com'
  s.license = 'Apache-2.0'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 1.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 3.0.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
