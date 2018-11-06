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

# Unit tests for JBPMAPIClient::ErrorInfoInstanceList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorInfoInstanceList' do
  before do
    # run before each test
    @instance = JBPMAPIClient::ErrorInfoInstanceList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorInfoInstanceList' do
    it 'should create an instance of ErrorInfoInstanceList' do
      expect(@instance).to be_instance_of(JBPMAPIClient::ErrorInfoInstanceList)
    end
  end
  describe 'test attribute "error_info_instance"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
