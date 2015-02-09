module Psique
  module ApplicationHelper
    def ui_element(slug, properties = {})
      render "psique/elements/#{slug}", properties
    end
  end
end
