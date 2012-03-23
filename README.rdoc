= Gambas

Produces inline PDF files via normal Rails view templates using the prawn library.

Check the test/dummy Rails app for examples.


Install
==========

```shell
gem install gambas

or add to your Gemfile

```shell
gem 'gambas'


Usage
==========

Create a view template e.g. index.pdf.prawn
In the index view add a branch to your respond_to block

```shell
format.pdf { render :pdf => :contents }


MIT Licence. rtsinani