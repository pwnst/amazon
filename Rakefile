Cucumber::Rake::Task.new(:features) do |t|
 date = Time.now.strftime("%Y-%m-%d-%H%M-%S")
 t.cucumber_opts = [
 "--format html -o report/report_#{date}.html",
 "--format pretty"]
end

task :default => :features
