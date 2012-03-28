
Gambas produces inline PDF files via normal Rails view templates using the prawn library. Use the pdf instance of `Prawn::Document` in the views to build your PDFs with the prawn's DSL.

Check the test/dummy Rails app for examples.


### Installation

```shell
gem install gambas
```

or add to your Gemfile

```ruby
gem 'gambas'
```

### Usage

Create a view template e.g. `index.pdf.prawn`. In the view you can use the `pdf` object to create the PDF document:

```ruby
pdf.text "This is a line of text."
```

adds a line of text into your PDF file.


In the index view add a branch to your `respond_to` block

```ruby
format.pdf { render :pdf => :contents }
```


### Configuration

You can configure the defaults of the `Prawn::Document` by specifying a hash in your `config/[environment].rb` files:

```ruby
config.gambas_options = { :page_size => "TABLOID" }
```


---

Copyright &copy; 2012 Artan Sinani