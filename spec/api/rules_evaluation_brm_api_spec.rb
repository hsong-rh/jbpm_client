=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::RulesEvaluationBRMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RulesEvaluationBRMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::RulesEvaluationBRMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RulesEvaluationBRMApi' do
    it 'should create an instance of RulesEvaluationBRMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::RulesEvaluationBRMApi)
    end
  end

  # unit tests for manage_container
  # Evaluates rules by executing commands on the rule session
  # 
  # @param id Container id where rules should be evaluated on
  # @param body Commands to be executed on rule engine given as BatchExecutionCommand type
  # @param [Hash] opts the optional parameters
  # @return [Response]
  describe 'manage_container test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
