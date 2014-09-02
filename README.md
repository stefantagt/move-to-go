# Fruit_To_LIME [![Build Status](https://travis-ci.org/Lundalogik/fruit_to_lime.png?branch=master)](https://travis-ci.org/Lundalogik/fruit_to_lime) 

## What is Fruit_To_LIME?
Fruit_To_LIME is a ruby-based import tool for [LIME Go](http://www.lime-go.com/). It can take virtually any input and generate pretty looking xml-files that LIME Go likes.
These files can then easily be imported to LIME Go by Lundalogik. During an import a automatic matching against all base data will be performed. 

Organizations, Persons, Deals, Notes and Documents can be imported to LIME Go.

Fruit_to_lime is a [ruby gem](https://rubygems.org/gems/fruit_to_lime). Install with 

> gem install fruit_to_lime


## Working with templates

To help you get started a couple of templates for different sources are included in Fruit_To_LIME. These templates contains basic code and a folder structure for a specific import. 
It is not required to use a template, but they will help you a lot along the way.

You can list the available templates with 

> fruit_to_lime list_templates

###Current templates

- Import from CSV-files
- Import from LIME Easy
- Import from a Excel-file
- Import from MS-SQL Server
- Import from VISMA SPCS

To create a new project, create a new folder and in that folder run

> fruit_to_lime unpack_template TEMPLATE

You'll now have a folder structure looking like this:
	
	./convert.rb
	./Gemfile
	./lib/
		./tomodel.rb
	./Rakefile.rb
	./spec/

If you have Bundler installed run to get the required gems for the template:

> bundle install

Your job is now to implement `./lib/tomodel.rb`

## tomodel.rb

`tomodel.rb` has a few functions for you to implement. In the templates theses functions are more or less done. What you need to do is to do the data-mapping and adding tags.

### Function `to_model()`:
This function reads the data and pipes it to other functions to do the setup and mapping

## Runing an import

Use tomodel.rb to map import data to LIME Go data. When you are done execute (this may vary from template to template)

> ruby convert.rb to_go infile.cvs go-importdata.xml

to create an xml-file (go-importdata.xml in this case) that can be imported by LIME Go.

## Help

You can find generated documentation on [rubydoc](http://rubydoc.info/gems/fruit_to_lime/frames)

## Legal

### License
[Mozilla Public License, version 2.0](LICENSE)

### Copyright
Copyright Lundalogik AB
