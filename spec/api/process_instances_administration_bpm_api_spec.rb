=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::ProcessInstancesAdministrationBPMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProcessInstancesAdministrationBPMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcessInstancesAdministrationBPMApi' do
    it 'should create an instance of ProcessInstancesAdministrationBPMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::ProcessInstancesAdministrationBPMApi)
    end
  end

  # unit tests for acknowledge_errors
  # Acknowledges given execution errors
  # 
  # @param id container id that errors belong to
  # @param error_id list of error identifiers to be acknowledged
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'acknowledge_errors test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for acknowledge_process_error
  # Acknowledge execution error by given id
  # 
  # @param id container id that error belongs to
  # @param error_id identifier of error to be acknowledged
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'acknowledge_process_error test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_node_instance
  # Cancels given node instance within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that node instance belongs to
  # @param node_instance_id identifier of node instance that should be canceled
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_node_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_active_node_instances
  # Retrieves all active node instances from process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that active nodes instances should be collected for
  # @param [Hash] opts the optional parameters
  # @return [NodeInstanceList]
  describe 'get_active_node_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_execution_errors
  # Retrieves execution errors for container, applies pagination
  # 
  # @param id container id that errors belong to
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_ack optional flag that indicates if acknowledged errors should also be collected, defaults to false
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [NodeInstanceList]
  describe 'get_execution_errors test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_execution_errors_by_process_instance
  # Retrieves execution errors for process instance and container, applies pagination
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that errors should be collected for
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_ack optional flag that indicates if acknowledged errors should also be collected, defaults to false
  # @option opts [String] :node optional name of the node in the process instance to filter by
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ExecutionErrorList]
  describe 'get_execution_errors_by_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_nodes
  # Retrieves all nodes from process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that process nodes should be collected from
  # @param [Hash] opts the optional parameters
  # @return [ProcessNodeList]
  describe 'get_nodes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_error_by_id
  # Retrieve execution error by its identifier
  # 
  # @param id container id that process error belongs to
  # @param error_id identifier of error to be loaded
  # @param [Hash] opts the optional parameters
  # @return [ExecutionError]
  describe 'get_process_error_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_timer_instances
  # Retrieves all active timer instance from process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that timer instances should be collected for
  # @param [Hash] opts the optional parameters
  # @return [TimerInstanceList]
  describe 'get_timer_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for migrate_process_instance
  # Migrates process instance to new container and process definition with optional node mapping
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance to be migrated
  # @param target_container_id container id that new process definition belongs to
  # @param target_process_id process definition that process instance should be migrated to
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body node mapping - unique ids of old definition to new definition given as Map
  # @return [MigrationReportInstance]
  describe 'migrate_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for migrate_process_instances
  # Migrates process instances to new container and process definition with optional node mapping
  # 
  # @param id container id that process instances belongs to
  # @param p_instance_id list of identifiers of process instance to be migrated
  # @param target_container_id container id that new process definition belongs to
  # @param target_process_id process definition that process instances should be migrated to
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body node mapping - unique ids of old definition to new definition given as Map
  # @return [MigrationReportInstanceList]
  describe 'migrate_process_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrigger_node_instance
  # Retriggers given node instance within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that node instance belongs to
  # @param node_instance_id identifier of node instance that should be retriggered
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'retrigger_node_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_node
  # Triggers node within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance where node should be triggered
  # @param node_id identifier of the node to be triggered
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'trigger_node test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_timer
  # Updates timer instance within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of process instance that timer belongs to
  # @param timer_id identifier of timer instance to be updated
  # @param body Map of timer expressions - deplay, perios and repeat are allowed values in the map
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :relative optional flag that indicates if the time expression is relative to the current date or not, defaults to true
  # @return [nil]
  describe 'update_timer test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
