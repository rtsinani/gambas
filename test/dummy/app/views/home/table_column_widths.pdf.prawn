pdf.text "Prawn trying to guess the column widths"
pdf.table(@data)
pdf.move_down 20

pdf.text "Manually setting all the column widths"
pdf.table(@data, :column_widths => [100, 200, 240])
pdf.move_down 20

pdf.text "Setting only the last column width"
pdf.table(@data, :column_widths => {2 => 240})