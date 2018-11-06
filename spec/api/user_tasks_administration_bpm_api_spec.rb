=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JBPMAPIClient::UserTasksAdministrationBPMApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserTasksAdministrationBPMApi' do
  before do
    # run before each test
    @instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserTasksAdministrationBPMApi' do
    it 'should create an instance of UserTasksAdministrationBPMApi' do
      expect(@instance).to be_instance_of(JBPMAPIClient::UserTasksAdministrationBPMApi)
    end
  end

  # unit tests for acknowledge_task_error
  # Acknowledges given execution error
  # 
  # @param id container id that error belongs to
  # @param error_id identifier of the execution error to be acknowledged
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'acknowledge_task_error test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for acknowledge_task_errors
  # Acknowledges given execution errors
  # 
  # @param id container id that errors belong to
  # @param error_id list of identifiers of execution errors to be acknowledged
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'acknowledge_task_errors test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_admins
  # Adds business admins to given task instance, optionally removing existing ones
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param body list of users/groups to be added as business admins, as OrgEntities type
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :remove optional flag that indicates if existing business admins should be removed, defaults to false
  # @return [nil]
  describe 'add_admins test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_excluded_owners
  # Adds excluded owners to given task instance, optionally removing existing ones
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param body list of users/groups to be added as excluded owners, as OrgEntities type
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :remove optional flag that indicates if existing excluded owners should be removed, defaults to false
  # @return [nil]
  describe 'add_excluded_owners test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_potential_owners
  # Adds potential owners to given task instance, optionally removing existing ones
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param body list of users/groups to be added as potential owners, as OrgEntities type
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :remove optional flag that indicates if existing potential owners should be removed, defaults to false
  # @return [nil]
  describe 'add_potential_owners test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_task_inputs
  # Adds task inputs to given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param body map of data to be set as task inputs, as Map
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_task_inputs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_notification
  # Cancels notification for given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param notification_id identifier of notification to be canceled
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_notification test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_reassignment
  # Cancels reassignment for given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param reassignment_id identifier of reassignment to be canceled
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_reassignment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_execution_errors_by_task
  # Retrieves execution errors for task instance and container, applies pagination
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of the task instance that errors should be collected for
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_ack optional flag that indicates if acknowledged errors should also be collected, defaults to false
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ExecutionErrorList]
  describe 'get_execution_errors_by_task test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_error_by_id
  # Retrieve execution error by its identifier
  # 
  # @param id container id that error belongs to
  # @param error_id identifier of the execution error to load
  # @param [Hash] opts the optional parameters
  # @return [ExecutionError]
  describe 'get_task_error_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_errors
  # Retrieves execution errors for container, allows to filter by task name and/or process id, applies pagination
  # 
  # @param id container id that task instance belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_ack optional flag that indicates if acknowledged errors should also be collected, defaults to false
  # @option opts [String] :name optional name of the task to filter by
  # @option opts [String] :process optional process id that the task belongs to to filter by
  # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
  # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
  # @option opts [String] :sort optional sort column, no default
  # @option opts [BOOLEAN] :sort_order optional sort direction (asc, desc) - defaults to asc
  # @return [ExecutionErrorList]
  describe 'get_task_errors test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_notifications
  # Retrieves notifications for given task
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :active_only optional flag that indicates if active only notifications should be collected, defaults to true
  # @return [TaskNotificationList]
  describe 'get_task_notifications test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_reassignments
  # Retrieves reassignments for given task
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :active_only optional flag that indicates if active only reassignmnets should be collected, defaults to true
  # @return [TaskReassignmentList]
  describe 'get_task_reassignments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for notify
  # Schedules new notification for given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param expires_at time expression for notification
  # @param body email notification details, as EmailNotification type
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :when_not_started optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set
  # @option opts [BOOLEAN] :when_not_completed optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set
  # @return [Integer]
  describe 'notify test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reassign
  # Schedules new reassign of given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param expires_at time expression for reassignmnet
  # @param body list of users/groups that task should be reassined to, as OrgEntities type
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :when_not_started optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set
  # @option opts [BOOLEAN] :when_not_completed optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set
  # @return [Integer]
  describe 'reassign test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_admins_groups
  # Removes business admin groups from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of groups to be removed from business admin list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_admins_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_admins_users
  # Removes business admins from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of users to be removed from business admin list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_admins_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_excluded_owners_groups
  # Removes excluded owners groups from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of groups to be removed from excluded owners list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_excluded_owners_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_excluded_owners_users
  # Removes excluded owners from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of users to be removed from excluded owners list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_excluded_owners_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_potential_owners_groups
  # Removes potential owner groups from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of groups to be removed from potantial owners list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_potential_owners_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_potential_owners_users
  # Removes potential owners from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param entity_id list of users to be removed from potantial owners list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_potential_owners_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_task_inputs
  # Removes task inputs referenced by names from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param name one or more names of task inputs to be removed
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_task_inputs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_task_outputs
  # Removes task outputs referenced by names from given task instance
  # 
  # @param id container id that task instance belongs to
  # @param t_instance_id identifier of task instance to be updated
  # @param name one or more names of task outputs to be removed
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_task_outputs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
