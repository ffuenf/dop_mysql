require 'foodcritic'
require 'rubocop/rake_task'

desc 'Run RuboCop style and lint checks'
RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['-D']
end

desc 'Run Foodcritic lint checks'
FoodCritic::Rake::LintTask.new(:foodcritic) do |t|
  t.options = { fail_tags: ['any'] }
end

desc 'Run all tests'
task test: [:rubocop, :foodcritic]
task default: :test

begin
  desc 'Create encrypted databags'
  task :create_databags do
    system('knife solo data bag create passwords automysqlbackup --data-bag-path ./test/integration/default/data_bags/ --json-file .data_bags/passwords_automysqlbackup.json --secret-file .data_bags/insecure_databag_secret')
    system('knife solo data bag create passwords mysql --data-bag-path ./test/integration/default/data_bags/ --json-file .data_bags/passwords_mysql.json --secret-file .data_bags/insecure_databag_secret')
    system('knife solo data bag create passwords system --data-bag-path ./test/integration/default/data_bags/ --json-file .data_bags/passwords_system.json --secret-file .data_bags/insecure_databag_secret')
  end

  task test: :create_databags
rescue LoadError
  puts '>>>>> knife-solo gem / knife-solo_data_bag gem not loaded, omitting tasks'
end

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new

  desc 'Alias for kitchen:all'
  task integration: 'kitchen:all'

  task test: :integration
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end
