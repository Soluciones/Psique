require_dependency 'psique/application_controller'

module Psique
  class DocumentationController < ApplicationController
    def index
    end

    def design_elements
      @page_title = 'Design Elements'
      @title = 'Design'
      @menu_elements = { 'Typography' => '#section_1', 'Icons' => '#section_2', 'Palette Colors' => '#section_3', 'UI Colors' => '#section_4' }
    end

    def ui_elements
      @page_title = 'UI Elements'
      @title = 'UI Blocks'
      @menu_elements = ['Banners', 'Comments', 'Blogs', 'Reply Box']
    end
  end
end
