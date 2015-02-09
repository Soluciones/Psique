module Psique
  class Engine < ::Rails::Engine
    isolate_namespace Psique

    initializer 'psique.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper Psique::ApplicationHelper
      end
    end

    initializer 'psique.assets.precompile' do |app|
      app.config.assets.precompile += %w(psique/documentation.css psique/documentation.js psique/psique.js psique/psique.css)
    end
  end
end
