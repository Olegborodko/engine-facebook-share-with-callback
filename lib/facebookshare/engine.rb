module Facebookshare
  class Engine < ::Rails::Engine
    isolate_namespace Facebookshare

    initializer "facebookshare.assets.precompile" do |app|
      app.config.assets.precompile += %w( facebookshare/button-fb.png )
    end
    # Rails.application.config.assets.precompile += %w( facebookshare/button-fb.png )
  end
end
