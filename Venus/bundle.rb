require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Venus'
  bundle.author = 'Venus working group'
  bundle.copyright = <<END
(c) Copyright 2013 LinkedIN. Distributed under MIT license.
END

  bundle.description = <<END
When you save a JavaScript unit test file with the extension "spec.js", Eclipse runs the unit test in the Terminal via Venus
END

  bundle.menu 'Venus' do |menu|
    menu.command 'Run unit test'
  end
end