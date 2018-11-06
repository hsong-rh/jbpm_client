# JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_audit_task**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_all_audit_task) | **GET** /server/queries/tasks/instances | Retrieves tasks with applied pagination
[**get_node_instance_for_work_item**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_node_instance_for_work_item) | **GET** /server/queries/processes/instances/{pInstanceId}/wi-nodes/instances/{workItemId} | Retrieves node instance for given process instance id and work item id
[**get_process_definitions_by_deployment_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_definitions_by_deployment_id) | **GET** /server/queries/containers/{id}/processes/definitions | Retrieves process definitions that belong to given container
[**get_process_instance_by_correlation_key**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instance_by_correlation_key) | **GET** /server/queries/processes/instance/correlation/{correlationKey} | Retrieves process instance by exactly matched correlation key
[**get_process_instance_by_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instance_by_id) | **GET** /server/queries/processes/instances/{pInstanceId} | Retrieves process instance for given process instance id and optionally loads its variables
[**get_process_instance_by_variables**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instance_by_variables) | **GET** /server/queries/processes/instances/variables/{varName} | Retrieves process instances filtered by by variable or by variable and its value. Applies pagination by default and allows to specify sorting
[**get_process_instance_history**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instance_history) | **GET** /server/queries/processes/instances/{pInstanceId}/nodes/instances | Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
[**get_process_instances**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instances) | **GET** /server/queries/processes/instances | Retrieves process instances filtered by status, initiator, processName - depending what query parameters are given. Applies pagination by default and allows to specify sorting
[**get_process_instances_by_correlation_key**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instances_by_correlation_key) | **GET** /server/queries/processes/instances/correlation/{correlationKey} | Retrieves process instances filtered by correlation key, retrieves all process instances that match correlationkey*. Applies pagination by default and allows to specify sorting
[**get_process_instances_by_deployment_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instances_by_deployment_id) | **GET** /server/queries/containers/{id}/process/instances | Retrieves process instances filtered by container. Applies pagination by default and allows to specify sorting
[**get_process_instances_by_process_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_process_instances_by_process_id) | **GET** /server/queries/processes/{pId}/instances | Retrieves process instances filtered by process id. Applies pagination by default and allows to specify sorting
[**get_processes_by_deployment_id_process_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_processes_by_deployment_id_process_id) | **GET** /server/queries/containers/{id}/processes/definitions/{pId} | Retrieves process definition that belong to given container and has matching process id
[**get_processes_by_filter**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_processes_by_filter) | **GET** /server/queries/processes/definitions | Retrieves process definitions filtered by process id or name
[**get_processes_by_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_processes_by_id) | **GET** /server/queries/processes/definitions/{pId} | Retrieves process definitions filtered by process id
[**get_task_by_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_task_by_id) | **GET** /server/queries/tasks/instances/{tInstanceId} | Retrieves task by task id
[**get_task_by_work_item_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_task_by_work_item_id) | **GET** /server/queries/tasks/instances/workitem/{workItemId} | Retrieves task by associated work item id
[**get_task_events**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_task_events) | **GET** /server/queries/tasks/instances/{tInstanceId}/events | Retrieves task events for given task id and applies pagination
[**get_tasks_assigned_as_business_administrator_by_status**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_tasks_assigned_as_business_administrator_by_status) | **GET** /server/queries/tasks/instances/admins | Retrieves tasks assigned as business administrator, optionally filters by status and applies pagination
[**get_tasks_assigned_as_potential_owner**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_tasks_assigned_as_potential_owner) | **GET** /server/queries/tasks/instances/pot-owners | Retrieves tasks assigned as potential owner, optionally filters by status and given groups and applies pagination
[**get_tasks_by_status_by_process_instance_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_tasks_by_status_by_process_instance_id) | **GET** /server/queries/tasks/instances/process/{pInstanceId} | Retrieves tasks associated with given process instance, optionally filters by status and applies pagination
[**get_tasks_by_variables**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_tasks_by_variables) | **GET** /server/queries/tasks/instances/variables/{varName} | Retrieves tasks by variable name and optionally by variable value, optionally filters by status and applies pagination
[**get_tasks_owned_by_status**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_tasks_owned_by_status) | **GET** /server/queries/tasks/instances/owners | Retrieves tasks owned, optionally filters by status and applies pagination
[**get_variable_history_by_instance_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_variable_history_by_instance_id) | **GET** /server/queries/processes/instances/{pInstanceId}/variables/instances/{varName} | Retrieves variable history (from audit logs) for given variable name that belongs to process instance
[**get_variables_current_state_by_instance_id**](QueriesProcessesNodesVariablesAndTasksBPMApi.md#get_variables_current_state_by_instance_id) | **GET** /server/queries/processes/instances/{pInstanceId}/variables/instances | Retrieves variables last value (from audit logs) for given process instance


# **get_all_audit_task**
> TaskSummaryList get_all_audit_task(opts)

Retrieves tasks with applied pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves tasks with applied pagination
  result = api_instance.get_all_audit_task(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_all_audit_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_node_instance_for_work_item**
> NodeInstance get_node_instance_for_work_item(p_instance_id, work_item_id)

Retrieves node instance for given process instance id and work item id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id that work item belongs to

work_item_id = 789 # Integer | work item id to retrieve node instance for


begin
  #Retrieves node instance for given process instance id and work item id
  result = api_instance.get_node_instance_for_work_item(p_instance_id, work_item_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_node_instance_for_work_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id that work item belongs to | 
 **work_item_id** | **Integer**| work item id to retrieve node instance for | 

### Return type

[**NodeInstance**](NodeInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_definitions_by_deployment_id**
> ProcessDefinitions get_process_definitions_by_deployment_id(id, opts)

Retrieves process definitions that belong to given container



### Example
```ruby
# load the gem
require 'jbpm_client'
# setup authorization
JBPMAPIClient.configure do |config|
  # Configure HTTP basic authorization: jbpm_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

id = "id_example" # String | container id to filter process definitions

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process definitions that belong to given container
  result = api_instance.get_process_definitions_by_deployment_id(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_definitions_by_deployment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id to filter process definitions | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessDefinitions**](ProcessDefinitions.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_by_correlation_key**
> ProcessInstance get_process_instance_by_correlation_key(correlation_key)

Retrieves process instance by exactly matched correlation key



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

correlation_key = "correlation_key_example" # String | correlation key associated with process instance


begin
  #Retrieves process instance by exactly matched correlation key
  result = api_instance.get_process_instance_by_correlation_key(correlation_key)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instance_by_correlation_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **correlation_key** | **String**| correlation key associated with process instance | 

### Return type

[**ProcessInstance**](ProcessInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_by_id**
> ProcessInstance get_process_instance_by_id(p_instance_id, opts)

Retrieves process instance for given process instance id and optionally loads its variables



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id to retrieve process instance

opts = { 
  with_vars: true # BOOLEAN | load process instance variables or not, defaults to false
}

begin
  #Retrieves process instance for given process instance id and optionally loads its variables
  result = api_instance.get_process_instance_by_id(p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instance_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id to retrieve process instance | 
 **with_vars** | **BOOLEAN**| load process instance variables or not, defaults to false | [optional] 

### Return type

[**ProcessInstance**](ProcessInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_by_variables**
> ProcessInstanceList get_process_instance_by_variables(var_name, opts)

Retrieves process instances filtered by by variable or by variable and its value. Applies pagination by default and allows to specify sorting



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

var_name = "var_name_example" # String | variable name to filter process instance

opts = { 
  var_value: "var_value_example", # String | variable value to filter process instance, optional when filtering by name only required when filtering by name and value
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances filtered by by variable or by variable and its value. Applies pagination by default and allows to specify sorting
  result = api_instance.get_process_instance_by_variables(var_name, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instance_by_variables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_name** | **String**| variable name to filter process instance | 
 **var_value** | **String**| variable value to filter process instance, optional when filtering by name only required when filtering by name and value | [optional] 
 **status** | [**Array&lt;Integer&gt;**](Integer.md)| optional process instance status (active, completed, aborted) - defaults ot active (1) only | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessInstanceList**](ProcessInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_history**
> NodeInstanceList get_process_instance_history(p_instance_id, opts)

Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id to to retrive history for

opts = { 
  active_only: true, # BOOLEAN | include active nodes only
  completed_only: true, # BOOLEAN | include completed nodes only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
  result = api_instance.get_process_instance_history(p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instance_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id to to retrive history for | 
 **active_only** | **BOOLEAN**| include active nodes only | [optional] 
 **completed_only** | **BOOLEAN**| include completed nodes only | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**NodeInstanceList**](NodeInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instances**
> ProcessInstanceList get_process_instances(opts)

Retrieves process instances filtered by status, initiator, processName - depending what query parameters are given. Applies pagination by default and allows to specify sorting



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  initiator: "initiator_example", # String | optional process instance initiator - user who started process instance to filter process instances
  process_name: "process_name_example", # String | optional process name to filter process instances
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances filtered by status, initiator, processName - depending what query parameters are given. Applies pagination by default and allows to specify sorting
  result = api_instance.get_process_instances(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;Integer&gt;**](Integer.md)| optional process instance status (active, completed, aborted) - defaults ot active (1) only | [optional] 
 **initiator** | **String**| optional process instance initiator - user who started process instance to filter process instances | [optional] 
 **process_name** | **String**| optional process name to filter process instances | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessInstanceList**](ProcessInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instances_by_correlation_key**
> ProcessInstanceList get_process_instances_by_correlation_key(correlation_key, opts)

Retrieves process instances filtered by correlation key, retrieves all process instances that match correlationkey*. Applies pagination by default and allows to specify sorting



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

correlation_key = "correlation_key_example" # String | correlation key to filter process instance, can be given as partial correlation key like in starts with approach

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances filtered by correlation key, retrieves all process instances that match correlationkey*. Applies pagination by default and allows to specify sorting
  result = api_instance.get_process_instances_by_correlation_key(correlation_key, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instances_by_correlation_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **correlation_key** | **String**| correlation key to filter process instance, can be given as partial correlation key like in starts with approach | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessInstanceList**](ProcessInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instances_by_deployment_id**
> ProcessInstanceList get_process_instances_by_deployment_id(id, opts)

Retrieves process instances filtered by container. Applies pagination by default and allows to specify sorting



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

id = "id_example" # String | container id to filter process instance

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances filtered by container. Applies pagination by default and allows to specify sorting
  result = api_instance.get_process_instances_by_deployment_id(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instances_by_deployment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id to filter process instance | 
 **status** | [**Array&lt;Integer&gt;**](Integer.md)| optional process instance status (active, completed, aborted) - defaults ot active (1) only | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessInstanceList**](ProcessInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instances_by_process_id**
> ProcessInstanceList get_process_instances_by_process_id(p_id, opts)

Retrieves process instances filtered by process id. Applies pagination by default and allows to specify sorting



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_id = "p_id_example" # String | process id to filter process instance

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  initiator: "initiator_example", # String | optinal process instance initiator - user who started process instance to filtr process instances
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances filtered by process id. Applies pagination by default and allows to specify sorting
  result = api_instance.get_process_instances_by_process_id(p_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_process_instances_by_process_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_id** | **String**| process id to filter process instance | 
 **status** | [**Array&lt;Integer&gt;**](Integer.md)| optional process instance status (active, completed, aborted) - defaults ot active (1) only | [optional] 
 **initiator** | **String**| optinal process instance initiator - user who started process instance to filtr process instances | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessInstanceList**](ProcessInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_processes_by_deployment_id_process_id**
> ProcessDefinition get_processes_by_deployment_id_process_id(id, p_id)

Retrieves process definition that belong to given container and has matching process id



### Example
```ruby
# load the gem
require 'jbpm_client'
# setup authorization
JBPMAPIClient.configure do |config|
  # Configure HTTP basic authorization: jbpm_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

id = "id_example" # String | container id that process definition belongs to

p_id = "p_id_example" # String | process id to load process definition


begin
  #Retrieves process definition that belong to given container and has matching process id
  result = api_instance.get_processes_by_deployment_id_process_id(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_processes_by_deployment_id_process_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process definition belongs to | 
 **p_id** | **String**| process id to load process definition | 

### Return type

[**ProcessDefinition**](ProcessDefinition.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_processes_by_filter**
> ProcessDefinitions get_processes_by_filter(opts)

Retrieves process definitions filtered by process id or name



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  filter: "filter_example", # String | process id or name to filter process definitions
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process definitions filtered by process id or name
  result = api_instance.get_processes_by_filter(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_processes_by_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| process id or name to filter process definitions | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**ProcessDefinitions**](ProcessDefinitions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_processes_by_id**
> ProcessDefinitions get_processes_by_id(p_id)

Retrieves process definitions filtered by process id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_id = "p_id_example" # String | process id to load process definition


begin
  #Retrieves process definitions filtered by process id
  result = api_instance.get_processes_by_id(p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_processes_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_id** | **String**| process id to load process definition | 

### Return type

[**ProcessDefinitions**](ProcessDefinitions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_by_id**
> TaskInstance get_task_by_id(t_instance_id)

Retrieves task by task id



### Example
```ruby
# load the gem
require 'jbpm_client'
# setup authorization
JBPMAPIClient.configure do |config|
  # Configure HTTP basic authorization: jbpm_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

t_instance_id = 789 # Integer | task id to load task instance


begin
  #Retrieves task by task id
  result = api_instance.get_task_by_id(t_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_task_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **t_instance_id** | **Integer**| task id to load task instance | 

### Return type

[**TaskInstance**](TaskInstance.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_by_work_item_id**
> TaskInstance get_task_by_work_item_id(work_item_id)

Retrieves task by associated work item id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

work_item_id = 789 # Integer | work item id to load task associated with


begin
  #Retrieves task by associated work item id
  result = api_instance.get_task_by_work_item_id(work_item_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_task_by_work_item_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_item_id** | **Integer**| work item id to load task associated with | 

### Return type

[**TaskInstance**](TaskInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_events**
> TaskEventInstanceList get_task_events(t_instance_id, opts)

Retrieves task events for given task id and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

t_instance_id = 789 # Integer | task id to load task events for

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves task events for given task id and applies pagination
  result = api_instance.get_task_events(t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_task_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **t_instance_id** | **Integer**| task id to load task events for | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskEventInstanceList**](TaskEventInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_assigned_as_business_administrator_by_status**
> TaskSummaryList get_tasks_assigned_as_business_administrator_by_status(opts)

Retrieves tasks assigned as business administrator, optionally filters by status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves tasks assigned as business administrator, optionally filters by status and applies pagination
  result = api_instance.get_tasks_assigned_as_business_administrator_by_status(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_tasks_assigned_as_business_administrator_by_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_assigned_as_potential_owner**
> TaskSummaryList get_tasks_assigned_as_potential_owner(opts)

Retrieves tasks assigned as potential owner, optionally filters by status and given groups and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'
# setup authorization
JBPMAPIClient.configure do |config|
  # Configure HTTP basic authorization: jbpm_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  groups: ["groups_example"], # Array<String> | optional group names to include in the query
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true, # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
  filter: "filter_example" # String | optional custom filter for task data
}

begin
  #Retrieves tasks assigned as potential owner, optionally filters by status and given groups and applies pagination
  result = api_instance.get_tasks_assigned_as_potential_owner(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_tasks_assigned_as_potential_owner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **groups** | [**Array&lt;String&gt;**](String.md)| optional group names to include in the query | [optional] 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]
 **filter** | **String**| optional custom filter for task data | [optional] 

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_by_status_by_process_instance_id**
> TaskSummaryList get_tasks_by_status_by_process_instance_id(p_instance_id, opts)

Retrieves tasks associated with given process instance, optionally filters by status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'
# setup authorization
JBPMAPIClient.configure do |config|
  # Configure HTTP basic authorization: jbpm_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id to filter task instances

opts = { 
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves tasks associated with given process instance, optionally filters by status and applies pagination
  result = api_instance.get_tasks_by_status_by_process_instance_id(p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_tasks_by_status_by_process_instance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id to filter task instances | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_by_variables**
> TaskSummaryList get_tasks_by_variables(var_name, opts)

Retrieves tasks by variable name and optionally by variable value, optionally filters by status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

var_name = "var_name_example" # String | name of the variable used to fiter tasks

opts = { 
  var_value: "var_value_example", # String | value of the variable used to fiter tasks, optional when filtering only by name, required when filtering by both name and value
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves tasks by variable name and optionally by variable value, optionally filters by status and applies pagination
  result = api_instance.get_tasks_by_variables(var_name, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_tasks_by_variables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_name** | **String**| name of the variable used to fiter tasks | 
 **var_value** | **String**| value of the variable used to fiter tasks, optional when filtering only by name, required when filtering by both name and value | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_owned_by_status**
> TaskSummaryList get_tasks_owned_by_status(opts)

Retrieves tasks owned, optionally filters by status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

opts = { 
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves tasks owned, optionally filters by status and applies pagination
  result = api_instance.get_tasks_owned_by_status(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_tasks_owned_by_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskSummaryList**](TaskSummaryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_variable_history_by_instance_id**
> VariableInstanceList get_variable_history_by_instance_id(p_instance_id, var_name, opts)

Retrieves variable history (from audit logs) for given variable name that belongs to process instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id to load variable history for

var_name = "var_name_example" # String | variable name that history should be loaded for

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves variable history (from audit logs) for given variable name that belongs to process instance
  result = api_instance.get_variable_history_by_instance_id(p_instance_id, var_name, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_variable_history_by_instance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id to load variable history for | 
 **var_name** | **String**| variable name that history should be loaded for | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**VariableInstanceList**](VariableInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_variables_current_state_by_instance_id**
> VariableInstanceList get_variables_current_state_by_instance_id(p_instance_id)

Retrieves variables last value (from audit logs) for given process instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesProcessesNodesVariablesAndTasksBPMApi.new

p_instance_id = 789 # Integer | process instance id to load variables current state (latest value) for


begin
  #Retrieves variables last value (from audit logs) for given process instance
  result = api_instance.get_variables_current_state_by_instance_id(p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesProcessesNodesVariablesAndTasksBPMApi->get_variables_current_state_by_instance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| process instance id to load variables current state (latest value) for | 

### Return type

[**VariableInstanceList**](VariableInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



