require 'non-stupid-digest-assets'

module Rooster
  class Engine < ::Rails::Engine
    isolate_namespace Rooster
    initializer "digest assets" do |config|
      NonStupidDigestAssets.whitelist = [/tinymce\/.*/, "image.png"]
    end

    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w( rooster/application.js rooster/application.css )
      Rails.application.config.assets.precompile += %w( rooster/application.js rooster/application.css )
    end

#    initializer "RoosterEngine asset precompile", group: :all do |app|
#      app.config.assets.precompile += %w(
#        rooster/rooster.js
#        rooster/rooster.css
#        rooster.js
#        rooster.css
#      )
#    end


    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.template_engine :haml
    end
    initializer :append_dependent_assets_path, :group => :all do |app|
      app.config.assets.paths.push(root.join("app", "assets", "fonts"))
    end

#    initializer :assets do |config|
#      Rails.application.assets.paths << root.join("vendor")
#    end
#    initializer "static assets" do |app|
#      #app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
##      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
#    end
  end
end
