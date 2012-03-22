class HomeController < ApplicationController
  def index
    respond_to do |format|
      # render :text => params.to_s
      # return
      format.html
      format.pdf { render_pdf }
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
  
  def render_pdf
    render :pdf => :contents
  end
end
