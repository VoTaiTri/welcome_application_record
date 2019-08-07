class WelcomeApplicationRecord
  def self.perform
    project_path = `pwd`
    project_path = project_path.delete("\n")

    model_files = Dir["#{project_path}/app/models/*.rb", "#{project_path}/app/models/**/*.rb"]
    model_files.each do |file_path|
      current_content = File.read(file_path)
      replace_content = current_content.gsub("< ActiveRecord::Base", "< ApplicationRecord")
      File.open(file_path, "w"){|f| f.puts(replace_content)}
    end

    File.open("#{project_path}/app/models/application_record.rb", "w") do |f|
      f << "class ApplicationRecord < ActiveRecord::Base\n"
      f << "  self.abstract_class = true\n"
      f << "end"
    end

    system "echo", "-e", "\e[92mYour ApplicationRecord was successfully created!"
  rescue Exception => e
    system "echo", "-e", "\e[91m#{e.message}"
    system "echo", "-e", "\e[91mMake sure you're in the right place and your project have /app/models directory!"
  end
end
