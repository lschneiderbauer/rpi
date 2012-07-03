class Hash

	def save(filename)

		File.open(Dir.home + "/#{filename}", "w") do |f|
			Marshal.dump(self, f)
		end

	end

	def self.load(filename)

		begin
			File.open(Dir.home + "/#{filename}", "r") do |f|
				Marshal.load(f)
			end
		rescue
			nil
		end

	end
						
end
