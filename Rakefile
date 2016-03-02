namespace :version do
  # Updates the patch version in VERSION file.
  task :bump_patch do
    current_version = File.read("VERSION")

    File.open("VERSION", "w+") do |f|
      major, minor, patch = current_version.split(".")
      f.puts("#{major}.#{minor}.#{patch.to_i + 1}")
    end
  end

  task :show do
    puts File.read("VERSION")
  end
end
