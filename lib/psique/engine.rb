module Psique
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Psique::Rails
      initializer 'psique.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
