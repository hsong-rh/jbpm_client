=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::ProcessInstancesBPMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProcessInstancesBPMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::ProcessInstancesBPMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcessInstancesBPMApi' do
    it 'should create an instance of ProcessInstancesBPMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::ProcessInstancesBPMApi)
    end
  end

  # unit tests for abort_process_instance
  # Aborts active process instance identified by given id
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance to be aborted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'abort_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for abort_process_instances
  # Aborts active process instances identified by given list of identifiers
  # 
  # @param id container id that process instance belongs to
  # @param instance_id list of identifiers of the process instances to be aborted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'abort_process_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for abort_work_item
  # Aborts work item identified by workItemId within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that work item belongs to
  # @param work_item_id identifier of the work item to abort
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'abort_work_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for complete_work_item
  # Completes work item identified by workItemId within process instance and container. Optionally completion can provide outcome data - as map
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that work item belongs to
  # @param work_item_id identifier of the work item to complete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body optional outcome data give as map
  # @return [nil]
  describe 'complete_work_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_available_signals
  # Retrieves active process instance&#39;s (identified by given id) active signals
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that signals should be collected for
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_available_signals test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance
  # Retrieves process instance identified by given id optionally with variables (variables will be loaded only for active process instance)
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance to be fetched
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :with_vars indicates if process instance variables should be loaded or not
  # @return [ProcessInstance]
  describe 'get_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_history_by_container_id
  # Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that history should be collected for
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :active_only instructs if active nodes only should be collected, defaults to false
  # @option opts [BOOLEAN] :completed_only instructs if completed nodes only should be collected, defaults to false
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @return [NodeInstanceList]
  describe 'get_process_instance_history_by_container_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_processes
  # Retrieves process instances that belong to given container and have given parent process instance, optionally allow to filter by process instance state.
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the parent process instance that process instances should be collected for
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instance_processes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_variable
  # Retrieves active process instance&#39;s (identified by given id) variable given as variable name
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that variable should be retrieved from
  # @param var_name variable name to be retrieved
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_process_instance_variable test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_variables
  # Retrieves active process instance&#39;s (identified by given id) variables, variables are returned as map where key is the variable name (string) and value is variable value (any type)
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that variables should be retrieved from
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_process_instance_variables test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instances_by_container_id
  # Retrieves process instances that belong to given container
  # 
  # @param id container id that process instance belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instances_by_container_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_processes_by_deployment_id
  # Retrieves process definitions that belong to given container
  # 
  # @param id container id that process instance belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessDefinitions]
  describe 'get_processes_by_deployment_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_variable_history
  # Retrieves variable history (from audit logs) for given variable name that belongs to process instance
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that variable history should be collected for
  # @param var_name name of the variables that history should be collected for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @return [VariableInstanceList]
  describe 'get_variable_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_variables_current_state
  # Retrieves variables last value (from audit logs) for given process instance
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that variables state should be collected for
  # @param [Hash] opts the optional parameters
  # @return [VariableInstanceList]
  describe 'get_variables_current_state test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_work_item
  # Retrieves work item identified by workItemId within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that work item belongs to
  # @param work_item_id identifier of the work item to retrieve
  # @param [Hash] opts the optional parameters
  # @return [WorkItemInstance]
  describe 'get_work_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_work_item_by_process_instance
  # Retrieves work items within process instance and container
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance that work items belong to
  # @param [Hash] opts the optional parameters
  # @return [WorkItemInstanceList]
  describe 'get_work_item_by_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_process_variable
  # Updates active process instance&#39;s (identified by given id) variable with given name
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance to be updated
  # @param var_name name of the variable to be set/updated
  # @param body variable data - any type can be provided
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_process_variable test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_process_variables
  # Updates active process instance&#39;s (identified by given id) variables given as map in the body
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance to be updated
  # @param body variable data give as map
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_process_variables test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signal_process_instance
  # Signals active process instance identified by given id with singal name and optional event data
  # 
  # @param id container id that process instance belongs to
  # @param p_instance_id identifier of the process instance to be signaled
  # @param s_name signal name to be send to process instance
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body optional event data - any type can be provided
  # @return [nil]
  describe 'signal_process_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signal_process_instances
  # Signals active process instances identified by given ids with singal name and optional event data
  # 
  # @param id container id that process instance belongs to
  # @param instance_id list of identifiers of the process instances to be signaled
  # @param s_name signal name to be send to process instance
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body optional event data - any type can be provided
  # @return [nil]
  describe 'signal_process_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_process
  # Starts new process instance of given process definition within given container with optional variables
  # 
  # @param id container id where the process definition resides
  # @param p_id process id that new instance should be created from
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body optional map of process variables
  # @return [Integer]
  describe 'start_process test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_process_with_correlation
  # Starts new process instance with correlation key of given process definition within given container with optional variables
  # 
  # @param id container id where the process definition resides
  # @param p_id process id that new instance should be created from
  # @param correlation_key correlation key to be assigned to process instance
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body optional map of process variables
  # @return [Integer]
  describe 'start_process_with_correlation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
