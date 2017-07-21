module Facebookshare
  class Engine < ::Rails::Engine
    isolate_namespace Facebookshare

    initializer "facebookshare.assets.precompile" do |app|
      # app.config.assets.precompile += %w( facebookshare/facebook_share.js )
    end
  end
end
