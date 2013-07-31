require 'ruble'
require 'ruble/terminal'

command 'Run unit test' do |cmd|
  cmd.output = :output_to_console
  cmd.trigger = :execution_listener, "org.eclipse.ui.file.save"
  cmd.invoke do |ctx|

    # Retrieve source path of file that was saved
    source_path = ENV['TM_FILEPATH']

    # Make sure file is a JavaScript unit test spec file
    if File.fnmatch('*.spec.js', source_path)
      Ruble::Terminal.open("venus run -t \"" + source_path + "\" -n", ENV['TM_PROJECT_DIRECTORY'])
    end
  end
end