=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::ProcessAndTaskFormsBPMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProcessAndTaskFormsBPMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::ProcessAndTaskFormsBPMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcessAndTaskFormsBPMApi' do
    it 'should create an instance of ProcessAndTaskFormsBPMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::ProcessAndTaskFormsBPMApi)
    end
  end

  # unit tests for get_process_form
  # Retrieves form for process definition within a container
  # 
  # @param id container id that process definition belongs to
  # @param p_id identifier of process definition that form should be fetched for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :lang optional language that the form should be found for
  # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
  # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one
  # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true
  # @return [String]
  describe 'get_process_form test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_form
  # Retrieves form for task instance within a container
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance that form should be fetched for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :lang optional language that the form should be found for
  # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
  # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one
  # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true
  # @return [String]
  describe 'get_task_form test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
