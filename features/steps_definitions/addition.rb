$:.push File.expand_path("../../lib", __FILE__)
require 'calculator'
require 'rspec/expectations'

Given /^I start the calculator$/ do
  @calculator ||= Calculator.new
end

When /^I enter ([^\"]+) into the calculator$/ do |value|
  @calculator.enter(value)
end

When /^I ask the result$/ do
  @calculator.result
end

Then /^the result should be ([^\"]+)$/ do |result|
  @calculator.result.should eq result
end
