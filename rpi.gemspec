require 'pathname'
ABS_PATH = Pathname.new(__FILE__).realpath.dirname
$LOAD_PATH << ABS_PATH + "lib/"


require 'rake'
require 'rpi'

Gem::Specification.new do |s|

        s.name          =       'rpi'
	s.version       =       '0.1'
	s.date          =       '2012-07-07'
	s.summary       =       "Script to initialize ruby project sessions."
	s.authors       =       ["Lukas Schneiderbauer"]
	s.email         =       ["lukas.schneiderbauer@gmail.com"]
	s.files         =       FileList[
					"bin/*",
					"lib/*.rb",
					"lib/rpi/*.rb",
					"README",
					"LICENSE"
				].to_a
	s.homepage      =       "https://github.com/vootey/rpi"

	s.add_dependency('commander', '>= 4.1.1')
end
