=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'QueriesProcessesNodesVariablesAndTasksBPMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QueriesProcessesNodesVariablesAndTasksBPMApi' do
    it 'should create an instance of QueriesProcessesNodesVariablesAndTasksBPMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi)
    end
  end

  # unit tests for get_all_audit_task
  # Retrieves tasks with applied pagination
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskSummaryList]
  describe 'get_all_audit_task test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_node_instance_for_work_item
  # Retrieves node instance for given process instance id and work item id
  # 
  # @param p_instance_id process instance id that work item belongs to
  # @param work_item_id work item id to retrieve node instance for
  # @param [Hash] opts the optional parameters
  # @return [NodeInstance]
  describe 'get_node_instance_for_work_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_definitions_by_deployment_id
  # Retrieves process definitions that belong to given container
  # 
  # @param id container id to filter process definitions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessDefinitions]
  describe 'get_process_definitions_by_deployment_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_by_correlation_key
  # Retrieves process instance by exactly matched correlation key
  # 
  # @param correlation_key correlation key associated with process instance
  # @param [Hash] opts the optional parameters
  # @return [ProcessInstance]
  describe 'get_process_instance_by_correlation_key test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_by_id
  # Retrieves process instance for given process instance id and optionally loads its variables
  # 
  # @param p_instance_id process instance id to retrieve process instance
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :with_vars load process instance variables or not, defaults to false
  # @return [ProcessInstance]
  describe 'get_process_instance_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_by_variables
  # Retrieves process instances filtered by by variable or by variable and its value. Applies pagination by default and allows to specify sorting
  # 
  # @param var_name variable name to filter process instance
  # @param [Hash] opts the optional parameters
  # @option opts [String] :var_value variable value to filter process instance, optional when filtering by name only required when filtering by name and value
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instance_by_variables test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instance_history
  # Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
  # 
  # @param p_instance_id process instance id to to retrive history for
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :active_only include active nodes only
  # @option opts [BOOLEAN] :completed_only include completed nodes only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @return [NodeInstanceList]
  describe 'get_process_instance_history test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instances
  # Retrieves process instances filtered by status, initiator, processName - depending what query parameters are given. Applies pagination by default and allows to specify sorting
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [String] :initiator optional process instance initiator - user who started process instance to filter process instances
  # @option opts [String] :process_name optional process name to filter process instances
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instances test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instances_by_correlation_key
  # Retrieves process instances filtered by correlation key, retrieves all process instances that match correlationkey*. Applies pagination by default and allows to specify sorting
  # 
  # @param correlation_key correlation key to filter process instance, can be given as partial correlation key like in starts with approach
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instances_by_correlation_key test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instances_by_deployment_id
  # Retrieves process instances filtered by container. Applies pagination by default and allows to specify sorting
  # 
  # @param id container id to filter process instance
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instances_by_deployment_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_process_instances_by_process_id
  # Retrieves process instances filtered by process id. Applies pagination by default and allows to specify sorting
  # 
  # @param p_id process id to filter process instance
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :status optional process instance status (active, completed, aborted) - defaults ot active (1) only
  # @option opts [String] :initiator optinal process instance initiator - user who started process instance to filtr process instances
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessInstanceList]
  describe 'get_process_instances_by_process_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_processes_by_deployment_id_process_id
  # Retrieves process definition that belong to given container and has matching process id
  # 
  # @param id container id that process definition belongs to
  # @param p_id process id to load process definition
  # @param [Hash] opts the optional parameters
  # @return [ProcessDefinition]
  describe 'get_processes_by_deployment_id_process_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_processes_by_filter
  # Retrieves process definitions filtered by process id or name
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter process id or name to filter process definitions
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ProcessDefinitions]
  describe 'get_processes_by_filter test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_processes_by_id
  # Retrieves process definitions filtered by process id
  # 
  # @param p_id process id to load process definition
  # @param [Hash] opts the optional parameters
  # @return [ProcessDefinitions]
  describe 'get_processes_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_by_id
  # Retrieves task by task id
  # 
  # @param t_instance_id task id to load task instance
  # @param [Hash] opts the optional parameters
  # @return [TaskInstance]
  describe 'get_task_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_by_work_item_id
  # Retrieves task by associated work item id
  # 
  # @param work_item_id work item id to load task associated with
  # @param [Hash] opts the optional parameters
  # @return [TaskInstance]
  describe 'get_task_by_work_item_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_events
  # Retrieves task events for given task id and applies pagination
  # 
  # @param t_instance_id task id to load task events for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskEventInstanceList]
  describe 'get_task_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks_assigned_as_business_administrator_by_status
  # Retrieves tasks assigned as business administrator, optionally filters by status and applies pagination
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :status optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  # @option opts [String] :user optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskSummaryList]
  describe 'get_tasks_assigned_as_business_administrator_by_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks_assigned_as_potential_owner
  # Retrieves tasks assigned as potential owner, optionally filters by status and given groups and applies pagination
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :status optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  # @option opts [Array<String>] :groups optional group names to include in the query
  # @option opts [String] :user optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @option opts [String] :filter optional custom filter for task data
  # @return [TaskSummaryList]
  describe 'get_tasks_assigned_as_potential_owner test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks_by_status_by_process_instance_id
  # Retrieves tasks associated with given process instance, optionally filters by status and applies pagination
  # 
  # @param p_instance_id process instance id to filter task instances
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :status optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskSummaryList]
  describe 'get_tasks_by_status_by_process_instance_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks_by_variables
  # Retrieves tasks by variable name and optionally by variable value, optionally filters by status and applies pagination
  # 
  # @param var_name name of the variable used to fiter tasks
  # @param [Hash] opts the optional parameters
  # @option opts [String] :var_value value of the variable used to fiter tasks, optional when filtering only by name, required when filtering by both name and value
  # @option opts [Array<String>] :status optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  # @option opts [String] :user optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskSummaryList]
  describe 'get_tasks_by_variables test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tasks_owned_by_status
  # Retrieves tasks owned, optionally filters by status and applies pagination
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :status optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  # @option opts [String] :user optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [TaskSummaryList]
  describe 'get_tasks_owned_by_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_variable_history_by_instance_id
  # Retrieves variable history (from audit logs) for given variable name that belongs to process instance
  # 
  # @param p_instance_id process instance id to load variable history for
  # @param var_name variable name that history should be loaded for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @return [VariableInstanceList]
  describe 'get_variable_history_by_instance_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_variables_current_state_by_instance_id
  # Retrieves variables last value (from audit logs) for given process instance
  # 
  # @param p_instance_id process instance id to load variables current state (latest value) for
  # @param [Hash] opts the optional parameters
  # @return [VariableInstanceList]
  describe 'get_variables_current_state_by_instance_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
