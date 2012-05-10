class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do 
        render :pdf => :contents, :pdf_options => { 
          :page_size => [275, 326],
          :info => { 
            :Title => "My title",
            :Author => "John Doe",
            :Subject => "My Subject",
            :Keywords => "test metadata ruby pdf dry",
            :Creator => "ACME Soft App",
            :Producer => "Prawn",
            :CreationDate => Time.now,
            :Grok => "Test Property" 
          }
        }
      end 
    end
  end
  
  def table_position
    @data = [["The quick brown fox jumped over the lazy dogs."]] * 2
    render_pdf
  end
  
  def table_column_widths
    @data = [ 
      [ "this is not quite as long as the others",
        "here we have a line that is long but with smaller words",
        "this is so very looooooooooooooooooooooooooooooong"
      ] 
    ]
    render_pdf
  end
  
  def page_size
    @custom_size = [275, 326]
    render_pdf
  end
  
  def render_pdf
    render :pdf => :contents
  end
end
