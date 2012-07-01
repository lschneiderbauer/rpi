def text_readme(projectname, options)
%Q{= #{projectname} - <??>

#{options.description}


== Features

* no feature


== Requirements

* visionmedia/commander (tested against v4.1.1)
  https://github.com/visionmedia/commander/
* highline (tested against v1.6.11)
  http://rubyforge.org/projects/highline/
}
end
