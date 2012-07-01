def text_lib(projectname, options)
%Q{module #{projectname.capitalize}

	Author = Struct.new(:name, :email)
	class Author; def to_s; self[:name] + " <" + self[:email] + ">"; end; end

	VERSION         = 'unreleased'
	AUTHORS         = [Author.new('#{options.author}','#{options.email}')]
	HOMEPAGE        = ''

end

# require '#{projectname}/...'
}
end
