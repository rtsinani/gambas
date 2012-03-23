
Gambas produces inline PDF files via normal Rails view templates using the prawn library.

Check the test/dummy Rails app for examples.


### Installation

```shell
gem install gambas
```

or add to your Gemfile

```shell
gem 'gambas'
```

### Usage

Create a view template e.g. `index.pdf.prawn`. In the view you can use the `pdf` object to create the PDF document:

```shell
pdf.text "This is a line of text."
```

adds a line of text into your PDF file.


In the index view add a branch to your `respond_to` block

```shell
format.pdf { render :pdf => :contents }
```


---
Copyright &copy; 2012 Artan Sinani