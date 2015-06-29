require_dependency 'psique/application_controller'

module Psique
  class DocumentationController < ApplicationController
    def index
    end

    def verema_colors
    end

    def design_elements
      @title = 'Design'
      @menu_elements = ['Typography', 'Icons', 'Palette Colors', 'UI Colors']
    end

    def ui_elements
      @title = 'UI Blocks'
      @menu_elements = ['Banners', 'Comments', 'Blogs', 'Reply Box']
    end
  end
end
