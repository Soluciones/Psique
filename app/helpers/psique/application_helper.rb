module Psique
  module ApplicationHelper
    def ui_element(slug, options = {})
      render "psique/elements/#{ slug }", options
    end
  end
end
