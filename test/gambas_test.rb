require 'test_helper'

class GambasTest < ActiveSupport::TestCase
  include Capybara::DSL
  
  test "prawn template handler" do
    visit '/home.pdf'
    
    assert_match 'application/pdf', headers['Content-Type']
  end
  
  def headers
    page.response_headers
  end
end
