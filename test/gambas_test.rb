require 'test_helper'

class GambasTest < ActiveSupport::TestCase
  include Capybara::DSL
  
  test "prawn template handler" do
    visit '/home.pdf'
    
    assert_match 'application/pdf', headers['Content-Type']
  end
  
  test "gambas options" do
    options = {
      :format => 'A4'
    }
    Gambas.configure options
    expected = Gambas.options
    assert_equal expected, options
  end
  
  test "pdf creation with options" do
    Gambas.configure ({
      :page_layout => :landscape
    })
    output = Gambas::PdfCreator.pdf_document 
    assert_equal :landscape, output.page.layout
  end
  
  def headers
    page.response_headers
  end
end
