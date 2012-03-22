cell_1 = pdf.make_cell(:content => "this row content comes directly ")
cell_2 = pdf.make_cell(:content => "from cell objects")
two_dimensional_array = [ 
  ["..."],
  ["subtable from an array"],
  ["..."] 
]

inner_table = pdf.make_table([ 
  ["..."],
  ["subtable from another table"],
  ["..."] 
])

pdf.table([ 
  ["just a regular row", "", "", "blah blah blah"],
  [cell_1, cell_2, "", ""],
  ["", "", two_dimensional_array, ""],
  ["just another regular row", "", "", ""],
  ["", "", inner_table, ""]
])