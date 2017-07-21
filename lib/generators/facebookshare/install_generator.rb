module Facebookshare
  class InstallGenerator < Rails::Generators::Base
    def install
      run 'bundle install'
      route "mount Facebookshare::Engine => '/custompath'"
      rake 'rubypress:install:migrations'
      rake 'db:migrate'
    end
  end
end