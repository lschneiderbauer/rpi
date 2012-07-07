def text_gemspec(projectname, options)
now = Time.now
%Q{require 'pathname'
ABS_PATH = Pathname.new(__FILE__).realpath.dirname
$LOAD_PATH << ABS_PATH + "lib/"


require 'rake'
require '#{projectname}'

Gem::Specification.new do |s|

        s.name          =       '#{projectname}'
	s.version       =       #{projectname.capitalize}::VERSION
	s.date          =       '#{now.year}-#{now.month.to_s.rjust(2,'0')}-#{now.mday.to_s.rjust(2,'0')}'
	s.summary       =       "#{options.description}"
	s.authors       =       #{projectname.capitalize}::AUTHORS.collect { |e| e[:name] }
	s.email         =       #{projectname.capitalize}::AUTHORS.collect { |e| e[:email] }
	s.files         =       FileList[
					"bin/*",
					"lib/*.rb",
					"lib/#{projectname}/*.rb",
					"README",
					"LICENSE"
				].to_a
	s.homepage      =       #{projectname.capitalize}::HOMEPAGE

	s.add_dependency('commander', '>= 4.1.1')
end
}
end
