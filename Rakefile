begin
  require 'bundler'
rescue LoadError => err
  puts 'Failed to load bundler, try running: gem install bundler'
  exit 1
end

begin
  require 'rubygems'
  require 'cucumber'
  require 'cucumber/rake/task'
rescue LoadError => err
  puts 'Failed to load some dependencies, try running: bundle install'
  exit 1
end

Cucumber::Rake::Task.new(:features) do |t|
 date = Time.now.strftime("%Y-%m-%d-%H%M-%S")
 t.cucumber_opts = [
 "--format html -o report/report_#{date}.html",
 "--format pretty"]
end

task :default => :features
