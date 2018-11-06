=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JBPMAPIClient::KieMessage
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'KieMessage' do
  before do
    # run before each test
    @instance = JBPMAPIClient::KieMessage.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KieMessage' do
    it 'should create an instance of KieMessage' do
      expect(@instance).to be_instance_of(JBPMAPIClient::KieMessage)
    end
  end
  describe 'test attribute "severity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["INFO", "WARN", "ERROR"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.severity = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "timestamp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

