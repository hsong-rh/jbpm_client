# JBPMAPIClient::UserTasksAdministrationBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge_task_error**](UserTasksAdministrationBPMApi.md#acknowledge_task_error) | **PUT** /server/admin/containers/{id}/tasks/errors/{errorId} | Acknowledges given execution error
[**acknowledge_task_errors**](UserTasksAdministrationBPMApi.md#acknowledge_task_errors) | **PUT** /server/admin/containers/{id}/tasks/errors | Acknowledges given execution errors
[**add_admins**](UserTasksAdministrationBPMApi.md#add_admins) | **PUT** /server/admin/containers/{id}/tasks/{tInstanceId}/admins | Adds business admins to given task instance, optionally removing existing ones
[**add_excluded_owners**](UserTasksAdministrationBPMApi.md#add_excluded_owners) | **PUT** /server/admin/containers/{id}/tasks/{tInstanceId}/exl-owners | Adds excluded owners to given task instance, optionally removing existing ones
[**add_potential_owners**](UserTasksAdministrationBPMApi.md#add_potential_owners) | **PUT** /server/admin/containers/{id}/tasks/{tInstanceId}/pot-owners | Adds potential owners to given task instance, optionally removing existing ones
[**add_task_inputs**](UserTasksAdministrationBPMApi.md#add_task_inputs) | **PUT** /server/admin/containers/{id}/tasks/{tInstanceId}/contents/input | Adds task inputs to given task instance
[**cancel_notification**](UserTasksAdministrationBPMApi.md#cancel_notification) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/notifications/{notificationId} | Cancels notification for given task instance
[**cancel_reassignment**](UserTasksAdministrationBPMApi.md#cancel_reassignment) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/reassignments/{reassignmentId} | Cancels reassignment for given task instance
[**get_execution_errors_by_task**](UserTasksAdministrationBPMApi.md#get_execution_errors_by_task) | **GET** /server/admin/containers/{id}/tasks/{tInstanceId}/errors | Retrieves execution errors for task instance and container, applies pagination
[**get_task_error_by_id**](UserTasksAdministrationBPMApi.md#get_task_error_by_id) | **GET** /server/admin/containers/{id}/tasks/errors/{errorId} | Retrieve execution error by its identifier
[**get_task_errors**](UserTasksAdministrationBPMApi.md#get_task_errors) | **GET** /server/admin/containers/{id}/tasks/errors | Retrieves execution errors for container, allows to filter by task name and/or process id, applies pagination
[**get_task_notifications**](UserTasksAdministrationBPMApi.md#get_task_notifications) | **GET** /server/admin/containers/{id}/tasks/{tInstanceId}/notifications | Retrieves notifications for given task
[**get_task_reassignments**](UserTasksAdministrationBPMApi.md#get_task_reassignments) | **GET** /server/admin/containers/{id}/tasks/{tInstanceId}/reassignments | Retrieves reassignments for given task
[**notify**](UserTasksAdministrationBPMApi.md#notify) | **POST** /server/admin/containers/{id}/tasks/{tInstanceId}/notifications | Schedules new notification for given task instance
[**reassign**](UserTasksAdministrationBPMApi.md#reassign) | **POST** /server/admin/containers/{id}/tasks/{tInstanceId}/reassignments | Schedules new reassign of given task instance
[**remove_admins_groups**](UserTasksAdministrationBPMApi.md#remove_admins_groups) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/admins/groups/{entityId} | Removes business admin groups from given task instance
[**remove_admins_users**](UserTasksAdministrationBPMApi.md#remove_admins_users) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/admins/users/{entityId} | Removes business admins from given task instance
[**remove_excluded_owners_groups**](UserTasksAdministrationBPMApi.md#remove_excluded_owners_groups) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/exl-owners/groups/{entityId} | Removes excluded owners groups from given task instance
[**remove_excluded_owners_users**](UserTasksAdministrationBPMApi.md#remove_excluded_owners_users) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/exl-owners/users/{entityId} | Removes excluded owners from given task instance
[**remove_potential_owners_groups**](UserTasksAdministrationBPMApi.md#remove_potential_owners_groups) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/pot-owners/groups/{entityId} | Removes potential owner groups from given task instance
[**remove_potential_owners_users**](UserTasksAdministrationBPMApi.md#remove_potential_owners_users) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/pot-owners/users/{entityId} | Removes potential owners from given task instance
[**remove_task_inputs**](UserTasksAdministrationBPMApi.md#remove_task_inputs) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/contents/input | Removes task inputs referenced by names from given task instance
[**remove_task_outputs**](UserTasksAdministrationBPMApi.md#remove_task_outputs) | **DELETE** /server/admin/containers/{id}/tasks/{tInstanceId}/contents/output | Removes task outputs referenced by names from given task instance


# **acknowledge_task_error**
> acknowledge_task_error(id, error_id)

Acknowledges given execution error



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that error belongs to

error_id = "error_id_example" # String | identifier of the execution error to be acknowledged


begin
  #Acknowledges given execution error
  api_instance.acknowledge_task_error(id, error_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->acknowledge_task_error: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that error belongs to | 
 **error_id** | **String**| identifier of the execution error to be acknowledged | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **acknowledge_task_errors**
> acknowledge_task_errors(id, error_id)

Acknowledges given execution errors



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that errors belong to

error_id = ["error_id_example"] # Array<String> | list of identifiers of execution errors to be acknowledged


begin
  #Acknowledges given execution errors
  api_instance.acknowledge_task_errors(id, error_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->acknowledge_task_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that errors belong to | 
 **error_id** | [**Array&lt;String&gt;**](String.md)| list of identifiers of execution errors to be acknowledged | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_admins**
> add_admins(id, t_instance_id, body, opts)

Adds business admins to given task instance, optionally removing existing ones



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

body = "body_example" # String | list of users/groups to be added as business admins, as OrgEntities type

opts = { 
  remove: false # BOOLEAN | optional flag that indicates if existing business admins should be removed, defaults to false
}

begin
  #Adds business admins to given task instance, optionally removing existing ones
  api_instance.add_admins(id, t_instance_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->add_admins: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **body** | **String**| list of users/groups to be added as business admins, as OrgEntities type | 
 **remove** | **BOOLEAN**| optional flag that indicates if existing business admins should be removed, defaults to false | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_excluded_owners**
> add_excluded_owners(id, t_instance_id, body, opts)

Adds excluded owners to given task instance, optionally removing existing ones



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

body = "body_example" # String | list of users/groups to be added as excluded owners, as OrgEntities type

opts = { 
  remove: false # BOOLEAN | optional flag that indicates if existing excluded owners should be removed, defaults to false
}

begin
  #Adds excluded owners to given task instance, optionally removing existing ones
  api_instance.add_excluded_owners(id, t_instance_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->add_excluded_owners: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **body** | **String**| list of users/groups to be added as excluded owners, as OrgEntities type | 
 **remove** | **BOOLEAN**| optional flag that indicates if existing excluded owners should be removed, defaults to false | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_potential_owners**
> add_potential_owners(id, t_instance_id, body, opts)

Adds potential owners to given task instance, optionally removing existing ones



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

body = "body_example" # String | list of users/groups to be added as potential owners, as OrgEntities type

opts = { 
  remove: false # BOOLEAN | optional flag that indicates if existing potential owners should be removed, defaults to false
}

begin
  #Adds potential owners to given task instance, optionally removing existing ones
  api_instance.add_potential_owners(id, t_instance_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->add_potential_owners: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **body** | **String**| list of users/groups to be added as potential owners, as OrgEntities type | 
 **remove** | **BOOLEAN**| optional flag that indicates if existing potential owners should be removed, defaults to false | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_task_inputs**
> add_task_inputs(id, t_instance_id, body)

Adds task inputs to given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

body = "body_example" # String | map of data to be set as task inputs, as Map


begin
  #Adds task inputs to given task instance
  api_instance.add_task_inputs(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->add_task_inputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **body** | **String**| map of data to be set as task inputs, as Map | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **cancel_notification**
> cancel_notification(id, t_instance_id, notification_id)

Cancels notification for given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

notification_id = 789 # Integer | identifier of notification to be canceled


begin
  #Cancels notification for given task instance
  api_instance.cancel_notification(id, t_instance_id, notification_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->cancel_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **notification_id** | **Integer**| identifier of notification to be canceled | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **cancel_reassignment**
> cancel_reassignment(id, t_instance_id, reassignment_id)

Cancels reassignment for given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

reassignment_id = 789 # Integer | identifier of reassignment to be canceled


begin
  #Cancels reassignment for given task instance
  api_instance.cancel_reassignment(id, t_instance_id, reassignment_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->cancel_reassignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **reassignment_id** | **Integer**| identifier of reassignment to be canceled | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_execution_errors_by_task**
> ExecutionErrorList get_execution_errors_by_task(id, t_instance_id, opts)

Retrieves execution errors for task instance and container, applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that errors should be collected for

opts = { 
  include_ack: false, # BOOLEAN | optional flag that indicates if acknowledged errors should also be collected, defaults to false
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves execution errors for task instance and container, applies pagination
  result = api_instance.get_execution_errors_by_task(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->get_execution_errors_by_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that errors should be collected for | 
 **include_ack** | **BOOLEAN**| optional flag that indicates if acknowledged errors should also be collected, defaults to false | [optional] [default to false]
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ExecutionErrorList**](ExecutionErrorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_error_by_id**
> ExecutionError get_task_error_by_id(id, error_id)

Retrieve execution error by its identifier



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that error belongs to

error_id = "error_id_example" # String | identifier of the execution error to load


begin
  #Retrieve execution error by its identifier
  result = api_instance.get_task_error_by_id(id, error_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->get_task_error_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that error belongs to | 
 **error_id** | **String**| identifier of the execution error to load | 

### Return type

[**ExecutionError**](ExecutionError.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_errors**
> ExecutionErrorList get_task_errors(id, opts)

Retrieves execution errors for container, allows to filter by task name and/or process id, applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

opts = { 
  include_ack: false, # BOOLEAN | optional flag that indicates if acknowledged errors should also be collected, defaults to false
  name: "name_example", # String | optional name of the task to filter by
  process: "process_example", # String | optional process id that the task belongs to to filter by
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves execution errors for container, allows to filter by task name and/or process id, applies pagination
  result = api_instance.get_task_errors(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->get_task_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **include_ack** | **BOOLEAN**| optional flag that indicates if acknowledged errors should also be collected, defaults to false | [optional] [default to false]
 **name** | **String**| optional name of the task to filter by | [optional] 
 **process** | **String**| optional process id that the task belongs to to filter by | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ExecutionErrorList**](ExecutionErrorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_notifications**
> TaskNotificationList get_task_notifications(id, t_instance_id, opts)

Retrieves notifications for given task



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

opts = { 
  active_only: true # BOOLEAN | optional flag that indicates if active only notifications should be collected, defaults to true
}

begin
  #Retrieves notifications for given task
  result = api_instance.get_task_notifications(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->get_task_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **active_only** | **BOOLEAN**| optional flag that indicates if active only notifications should be collected, defaults to true | [optional] [default to true]

### Return type

[**TaskNotificationList**](TaskNotificationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_reassignments**
> TaskReassignmentList get_task_reassignments(id, t_instance_id, opts)

Retrieves reassignments for given task



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

opts = { 
  active_only: true # BOOLEAN | optional flag that indicates if active only reassignmnets should be collected, defaults to true
}

begin
  #Retrieves reassignments for given task
  result = api_instance.get_task_reassignments(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->get_task_reassignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **active_only** | **BOOLEAN**| optional flag that indicates if active only reassignmnets should be collected, defaults to true | [optional] [default to true]

### Return type

[**TaskReassignmentList**](TaskReassignmentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **notify**
> Integer notify(id, t_instance_id, expires_at, body, opts)

Schedules new notification for given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

expires_at = "expires_at_example" # String | time expression for notification

body = "body_example" # String | email notification details, as EmailNotification type

opts = { 
  when_not_started: false, # BOOLEAN | optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set
  when_not_completed: false # BOOLEAN | optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set
}

begin
  #Schedules new notification for given task instance
  result = api_instance.notify(id, t_instance_id, expires_at, body, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->notify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **expires_at** | **String**| time expression for notification | 
 **body** | **String**| email notification details, as EmailNotification type | 
 **when_not_started** | **BOOLEAN**| optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set | [optional] [default to false]
 **when_not_completed** | **BOOLEAN**| optional flag that indicates the type of notification, either whenNotStarted or whenNotCompleted must be set | [optional] [default to false]

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **reassign**
> Integer reassign(id, t_instance_id, expires_at, body, opts)

Schedules new reassign of given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

expires_at = "expires_at_example" # String | time expression for reassignmnet

body = "body_example" # String | list of users/groups that task should be reassined to, as OrgEntities type

opts = { 
  when_not_started: false, # BOOLEAN | optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set
  when_not_completed: false # BOOLEAN | optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set
}

begin
  #Schedules new reassign of given task instance
  result = api_instance.reassign(id, t_instance_id, expires_at, body, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->reassign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **expires_at** | **String**| time expression for reassignmnet | 
 **body** | **String**| list of users/groups that task should be reassined to, as OrgEntities type | 
 **when_not_started** | **BOOLEAN**| optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set | [optional] [default to false]
 **when_not_completed** | **BOOLEAN**| optional flag that indicates the type of reassignment, either whenNotStarted or whenNotCompleted must be set | [optional] [default to false]

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_admins_groups**
> remove_admins_groups(id, t_instance_id, entity_id)

Removes business admin groups from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of groups to be removed from business admin list


begin
  #Removes business admin groups from given task instance
  api_instance.remove_admins_groups(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_admins_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of groups to be removed from business admin list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_admins_users**
> remove_admins_users(id, t_instance_id, entity_id)

Removes business admins from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of users to be removed from business admin list


begin
  #Removes business admins from given task instance
  api_instance.remove_admins_users(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_admins_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of users to be removed from business admin list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_excluded_owners_groups**
> remove_excluded_owners_groups(id, t_instance_id, entity_id)

Removes excluded owners groups from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of groups to be removed from excluded owners list


begin
  #Removes excluded owners groups from given task instance
  api_instance.remove_excluded_owners_groups(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_excluded_owners_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of groups to be removed from excluded owners list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_excluded_owners_users**
> remove_excluded_owners_users(id, t_instance_id, entity_id)

Removes excluded owners from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of users to be removed from excluded owners list


begin
  #Removes excluded owners from given task instance
  api_instance.remove_excluded_owners_users(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_excluded_owners_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of users to be removed from excluded owners list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_potential_owners_groups**
> remove_potential_owners_groups(id, t_instance_id, entity_id)

Removes potential owner groups from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of groups to be removed from potantial owners list


begin
  #Removes potential owner groups from given task instance
  api_instance.remove_potential_owners_groups(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_potential_owners_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of groups to be removed from potantial owners list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_potential_owners_users**
> remove_potential_owners_users(id, t_instance_id, entity_id)

Removes potential owners from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

entity_id = "entity_id_example" # String | list of users to be removed from potantial owners list


begin
  #Removes potential owners from given task instance
  api_instance.remove_potential_owners_users(id, t_instance_id, entity_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_potential_owners_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **entity_id** | **String**| list of users to be removed from potantial owners list | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_task_inputs**
> remove_task_inputs(id, t_instance_id, name)

Removes task inputs referenced by names from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

name = ["name_example"] # Array<String> | one or more names of task inputs to be removed


begin
  #Removes task inputs referenced by names from given task instance
  api_instance.remove_task_inputs(id, t_instance_id, name)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_task_inputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **name** | [**Array&lt;String&gt;**](String.md)| one or more names of task inputs to be removed | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_task_outputs**
> remove_task_outputs(id, t_instance_id, name)

Removes task outputs referenced by names from given task instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTasksAdministrationBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance to be updated

name = ["name_example"] # Array<String> | one or more names of task outputs to be removed


begin
  #Removes task outputs referenced by names from given task instance
  api_instance.remove_task_outputs(id, t_instance_id, name)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTasksAdministrationBPMApi->remove_task_outputs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance to be updated | 
 **name** | [**Array&lt;String&gt;**](String.md)| one or more names of task outputs to be removed | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



