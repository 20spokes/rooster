module Rooster
  class Engine < ::Rails::Engine
    isolate_namespace Rooster

    config.asset_path = "/rooster_assets%s"

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.template_engine :haml
    end

#    initializer :assets do |config|
#      Rails.application.assets.paths << root.join("vendor")
#    end
     initializer :append_dependent_assets_path, :group => :all do |app|
       app.config.assets.paths.push(root.join("vendor"))
     end
  end
end
