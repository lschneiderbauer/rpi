def text_bin(projectname, options)
%Q{#!/usr/bin/env ruby

# set process name
$0='#{projectname}'

require 'pathname'
ABS_PATH = Pathname.new(__FILE__).realpath.dirname.parent
$LOAD_PATH << ABS_PATH + "lib/"

require 'commander/import'
require '#{projectname}'

program(:version, #{projectname.capitalize}::VERSION)
program(:description, '#{options.description}')
program(:help, 'Authors', #{projectname.capitalize}::AUTHORS.collect { |e| e.to_s }.join("\\n"))
program(:help, 'Homepage', #{projectname.capitalize}::HOMEPAGE)
default_command :main

command :main do |c|
	c.syntax = '#{projectname} main [options]'
	c.summary = ''
	c.description = ''
	c.example 'description', 'command example'
	c.option '--some-switch', 'Some switch that does something'
	c.action do |args, options|
		# do something
	end
end
}
end
