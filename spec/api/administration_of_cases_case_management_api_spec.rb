=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::AdministrationOfCasesCaseManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AdministrationOfCasesCaseManagementApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::AdministrationOfCasesCaseManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdministrationOfCasesCaseManagementApi' do
    it 'should create an instance of AdministrationOfCasesCaseManagementApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::AdministrationOfCasesCaseManagementApi)
    end
  end

  # unit tests for get_admin_case_instances
  # Retrieves case instances without authentication checks and applies pagination
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :status optional case instance status (open, closed, canceled) - defaults ot open (1) only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [CaseInstanceList]
  describe 'get_admin_case_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for migrate_case_instance
  # Migrates case instance to new container and case definition with required process mapping to migrate all process instances belonging to a case instance with optional node mapping
  # 
  # @param id container id that case instance belongs to
  # @param case_id identifier of case instance to be migrated
  # @param target_container_id container id that new case definition should be migrated to to
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body process and node mapping - unique ids of old definition to new definition given as Map of Maps - ProcessMapping should provide map of process definitions (mandatory), NodeMapping should provide map of node mappings (optional)
  # @return [CaseMigrationReportInstance]
  describe 'migrate_case_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
