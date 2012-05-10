pdf.text "TABLOID portrait page set in config."

["A4", "TABLOID", "B7", @custom_size].each do |size|
  pdf.start_new_page(:size => size, :layout => :portrait)
  pdf.text "#{size} portrait page."
  
  pdf.start_new_page(:size => size, :layout => :landscape)
  pdf.text "#{size} landscape page."
end
