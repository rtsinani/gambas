require "action_view/template"
require "prawn"


module Gambas
  @options = {}
  
  def self.options
    @options
  end
  
  def self.configure (options)
    @options = options 
  end
  
  class PdfCreator
    def self.create
      pdf = pdf_document
      yield pdf
      pdf.render.html_safe
    end  
    
    def self.pdf_document
      Prawn::Document.new(Gambas.options)
    end
  end
  
  
  class PDF  
    def self.call (template)
      %{
        Gambas::PdfCreator.create do |pdf|
          #{template.source}
        end
      }
    end  
  end
  
  class Railtie < Rails::Railtie
    config.gambas_options = ActiveSupport::OrderedOptions.new
    
    initializer "gambas_options.configure" do |app|
      Gambas.configure app.config.gambas_options
    end
    
    ActionView::Template.register_template_handler :prawn, Gambas::PDF
  end
end


