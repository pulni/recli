When /^I get help for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} help`)
end

# Add more step definitions here
When /^I loaded a file named "([^"]*)"$/ do |file_name|
  step %(I run `recli load_data --file="#{file_name}"`)
end

Given(/^a empty recomendation database$/) do
  redis = Redis.new(:host => "localhost", :port => 6379, :db => 15)
  redis.keys("recommendify*").each do |k|
    redis.del(k)
  end
end