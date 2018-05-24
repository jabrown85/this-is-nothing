task :spec do
  require "rspec/core"
  code = RSpec::Core::Runner.run(
    ["./spec"],
    $stderr, $stdout)
  exit(code) unless code == 0
end

task default: :spec
