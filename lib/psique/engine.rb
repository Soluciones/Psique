module Psique
  class Engine < ::Rails::Engine
    isolate_namespace Psique

    initializer 'psique.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper Psique::ApplicationHelper
      end
    end
  end
end
