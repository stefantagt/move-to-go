# Fruit_To_Lime [![Build Status](https://travis-ci.org/Lundalogik/fruit_to_lime.png?branch=master)](https://travis-ci.org/Lundalogik/fruit_to_lime) 

Generating pretty looking xml files that [LIME Go](http://www.lime-go.com/) likes

Fruit_to_lime is a [ruby gem](https://rubygems.org/gems/fruit_to_lime). Install with 

> gem install fruit_to_lime

Once installed execute 

> fruit_to_lime unpack_template TEMPLATE

to create a new project. You can list the available templates with 

> fruit_to_lime list_templates

Use tomodel.rb to map import data to LIME Go data. When you are done execute

> ruby convert.rb to_go infile.cvs go-importdata.xml

to create an xml-file (go-importdata.xml in this case) that can be imported by LIME Go.

## Help

But what about help? How do I find documentation about the classes?

You can find generated documentation on [rubydoc](http://rubydoc.info/gems/fruit_to_lime/frames)

## Legal

### License
[Mozilla Public License, version 2.0](LICENSE)

### Copyright
Copyright Lundalogik AB
