require "action_view/template"
require "prawn"

# Mime::Type.register "application/pdf", :pdf

class PdfCreator
  def self.create
    pdf = Prawn::Document.new
    yield pdf
    pdf.render.html_safe
  end  
end

module Gambas
  class PDF  
    def self.call (template)
      %{
        PdfCreator.create do |pdf|
          #{template.source}
        end
      }
    end  
  end
end

ActionView::Template.register_template_handler :prawn, Gambas::PDF
