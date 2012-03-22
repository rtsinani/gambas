data = [["This row should be repeated on every new page"]]
data += [["..."]] * 30
pdf.table(data, :header => true)