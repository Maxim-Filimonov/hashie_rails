$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'hashie_rails/version'

Gem::Specification.new do |s|
  s.name        = 'hashie_rails'
  s.version     = HashieRails::VERSION
  s.authors     = ['Maxim-Filimonov']
  s.email       = ['tpaktopsp@gmail.com']
  s.homepage    = 'https://github.com/Maxim-Filimonov/hashie_rails'
  s.summary     = 'Automatic strong parameter detection with Hashie and Rails 4.'
  s.description = 'Automatic strong parameter detection with Hashie and Rails 4.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'hashie', '>= 3.0'

  if RUBY_PLATFORM != 'java'
    s.add_development_dependency 'sqlite3'
  else
    s.add_development_dependency 'jdbc-sqlite3'
    s.add_development_dependency 'activerecord-jdbcsqlite3-adapter'
  end

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rails', '~> 4.0'
  s.add_development_dependency 'grape'
  s.post_install_message = <<-MESSAGE
!    The 'hashie_rails' gem has been deprecated and has been replaced by 'hashie-forbidden_attributes'.
!    See: https://rubygems.org/gems/hashie-forbidden_attributes
!    And: https://github.com/Maxim-Filimonov/hashie-forbidden_attributes
MESSAGE
end
