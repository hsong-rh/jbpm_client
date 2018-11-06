# JBPMAPIClient::ProcessInstancesAdministrationBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge_errors**](ProcessInstancesAdministrationBPMApi.md#acknowledge_errors) | **PUT** /server/admin/containers/{id}/processes/errors | Acknowledges given execution errors
[**acknowledge_process_error**](ProcessInstancesAdministrationBPMApi.md#acknowledge_process_error) | **PUT** /server/admin/containers/{id}/processes/errors/{errorId} | Acknowledge execution error by given id
[**cancel_node_instance**](ProcessInstancesAdministrationBPMApi.md#cancel_node_instance) | **DELETE** /server/admin/containers/{id}/processes/instances/{pInstanceId}/nodeinstances/{nodeInstanceId} | Cancels given node instance within process instance and container
[**get_active_node_instances**](ProcessInstancesAdministrationBPMApi.md#get_active_node_instances) | **GET** /server/admin/containers/{id}/processes/instances/{pInstanceId}/nodeinstances | Retrieves all active node instances from process instance and container
[**get_execution_errors**](ProcessInstancesAdministrationBPMApi.md#get_execution_errors) | **GET** /server/admin/containers/{id}/processes/errors | Retrieves execution errors for container, applies pagination
[**get_execution_errors_by_process_instance**](ProcessInstancesAdministrationBPMApi.md#get_execution_errors_by_process_instance) | **GET** /server/admin/containers/{id}/processes/instances/{pInstanceId}/errors | Retrieves execution errors for process instance and container, applies pagination
[**get_nodes**](ProcessInstancesAdministrationBPMApi.md#get_nodes) | **GET** /server/admin/containers/{id}/processes/instances/{pInstanceId}/nodes | Retrieves all nodes from process instance and container
[**get_process_error_by_id**](ProcessInstancesAdministrationBPMApi.md#get_process_error_by_id) | **GET** /server/admin/containers/{id}/processes/errors/{errorId} | Retrieve execution error by its identifier
[**get_timer_instances**](ProcessInstancesAdministrationBPMApi.md#get_timer_instances) | **GET** /server/admin/containers/{id}/processes/instances/{pInstanceId}/timers | Retrieves all active timer instance from process instance and container
[**migrate_process_instance**](ProcessInstancesAdministrationBPMApi.md#migrate_process_instance) | **PUT** /server/admin/containers/{id}/processes/instances/{pInstanceId} | Migrates process instance to new container and process definition with optional node mapping
[**migrate_process_instances**](ProcessInstancesAdministrationBPMApi.md#migrate_process_instances) | **PUT** /server/admin/containers/{id}/processes/instances | Migrates process instances to new container and process definition with optional node mapping
[**retrigger_node_instance**](ProcessInstancesAdministrationBPMApi.md#retrigger_node_instance) | **PUT** /server/admin/containers/{id}/processes/instances/{pInstanceId}/nodeinstances/{nodeInstanceId} | Retriggers given node instance within process instance and container
[**trigger_node**](ProcessInstancesAdministrationBPMApi.md#trigger_node) | **POST** /server/admin/containers/{id}/processes/instances/{pInstanceId}/nodes/{nodeId} | Triggers node within process instance and container
[**update_timer**](ProcessInstancesAdministrationBPMApi.md#update_timer) | **PUT** /server/admin/containers/{id}/processes/instances/{pInstanceId}/timers/{timerId} | Updates timer instance within process instance and container


# **acknowledge_errors**
> acknowledge_errors(id, error_id)

Acknowledges given execution errors



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that errors belong to

error_id = ["error_id_example"] # Array<String> | list of error identifiers to be acknowledged


begin
  #Acknowledges given execution errors
  api_instance.acknowledge_errors(id, error_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->acknowledge_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that errors belong to | 
 **error_id** | [**Array&lt;String&gt;**](String.md)| list of error identifiers to be acknowledged | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **acknowledge_process_error**
> acknowledge_process_error(id, error_id)

Acknowledge execution error by given id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that error belongs to

error_id = "error_id_example" # String | identifier of error to be acknowledged


begin
  #Acknowledge execution error by given id
  api_instance.acknowledge_process_error(id, error_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->acknowledge_process_error: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that error belongs to | 
 **error_id** | **String**| identifier of error to be acknowledged | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **cancel_node_instance**
> cancel_node_instance(id, p_instance_id, node_instance_id)

Cancels given node instance within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that node instance belongs to

node_instance_id = 789 # Integer | identifier of node instance that should be canceled


begin
  #Cancels given node instance within process instance and container
  api_instance.cancel_node_instance(id, p_instance_id, node_instance_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->cancel_node_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that node instance belongs to | 
 **node_instance_id** | **Integer**| identifier of node instance that should be canceled | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_active_node_instances**
> NodeInstanceList get_active_node_instances(id, p_instance_id)

Retrieves all active node instances from process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that active nodes instances should be collected for


begin
  #Retrieves all active node instances from process instance and container
  result = api_instance.get_active_node_instances(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_active_node_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that active nodes instances should be collected for | 

### Return type

[**NodeInstanceList**](NodeInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_execution_errors**
> NodeInstanceList get_execution_errors(id, opts)

Retrieves execution errors for container, applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that errors belong to

opts = { 
  include_ack: false, # BOOLEAN | optional flag that indicates if acknowledged errors should also be collected, defaults to false
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves execution errors for container, applies pagination
  result = api_instance.get_execution_errors(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_execution_errors: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that errors belong to | 
 **include_ack** | **BOOLEAN**| optional flag that indicates if acknowledged errors should also be collected, defaults to false | [optional] [default to false]
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**NodeInstanceList**](NodeInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_execution_errors_by_process_instance**
> ExecutionErrorList get_execution_errors_by_process_instance(id, p_instance_id, opts)

Retrieves execution errors for process instance and container, applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that errors should be collected for

opts = { 
  include_ack: false, # BOOLEAN | optional flag that indicates if acknowledged errors should also be collected, defaults to false
  node: "node_example", # String | optional name of the node in the process instance to filter by
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves execution errors for process instance and container, applies pagination
  result = api_instance.get_execution_errors_by_process_instance(id, p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_execution_errors_by_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that errors should be collected for | 
 **include_ack** | **BOOLEAN**| optional flag that indicates if acknowledged errors should also be collected, defaults to false | [optional] [default to false]
 **node** | **String**| optional name of the node in the process instance to filter by | [optional] 
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



# **get_nodes**
> ProcessNodeList get_nodes(id, p_instance_id)

Retrieves all nodes from process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that process nodes should be collected from


begin
  #Retrieves all nodes from process instance and container
  result = api_instance.get_nodes(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_nodes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that process nodes should be collected from | 

### Return type

[**ProcessNodeList**](ProcessNodeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_error_by_id**
> ExecutionError get_process_error_by_id(id, error_id)

Retrieve execution error by its identifier



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process error belongs to

error_id = "error_id_example" # String | identifier of error to be loaded


begin
  #Retrieve execution error by its identifier
  result = api_instance.get_process_error_by_id(id, error_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_process_error_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process error belongs to | 
 **error_id** | **String**| identifier of error to be loaded | 

### Return type

[**ExecutionError**](ExecutionError.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_timer_instances**
> TimerInstanceList get_timer_instances(id, p_instance_id)

Retrieves all active timer instance from process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that timer instances should be collected for


begin
  #Retrieves all active timer instance from process instance and container
  result = api_instance.get_timer_instances(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->get_timer_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that timer instances should be collected for | 

### Return type

[**TimerInstanceList**](TimerInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **migrate_process_instance**
> MigrationReportInstance migrate_process_instance(id, p_instance_id, target_container_id, target_process_id, opts)

Migrates process instance to new container and process definition with optional node mapping



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance to be migrated

target_container_id = "target_container_id_example" # String | container id that new process definition belongs to

target_process_id = "target_process_id_example" # String | process definition that process instance should be migrated to

opts = { 
  body: "body_example" # String | node mapping - unique ids of old definition to new definition given as Map
}

begin
  #Migrates process instance to new container and process definition with optional node mapping
  result = api_instance.migrate_process_instance(id, p_instance_id, target_container_id, target_process_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->migrate_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance to be migrated | 
 **target_container_id** | **String**| container id that new process definition belongs to | 
 **target_process_id** | **String**| process definition that process instance should be migrated to | 
 **body** | **String**| node mapping - unique ids of old definition to new definition given as Map | [optional] 

### Return type

[**MigrationReportInstance**](MigrationReportInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **migrate_process_instances**
> MigrationReportInstanceList migrate_process_instances(id, p_instance_id, target_container_id, target_process_id, opts)

Migrates process instances to new container and process definition with optional node mapping



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instances belongs to

p_instance_id = [56] # Array<Integer> | list of identifiers of process instance to be migrated

target_container_id = "target_container_id_example" # String | container id that new process definition belongs to

target_process_id = "target_process_id_example" # String | process definition that process instances should be migrated to

opts = { 
  body: "body_example" # String | node mapping - unique ids of old definition to new definition given as Map
}

begin
  #Migrates process instances to new container and process definition with optional node mapping
  result = api_instance.migrate_process_instances(id, p_instance_id, target_container_id, target_process_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->migrate_process_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instances belongs to | 
 **p_instance_id** | [**Array&lt;Integer&gt;**](Integer.md)| list of identifiers of process instance to be migrated | 
 **target_container_id** | **String**| container id that new process definition belongs to | 
 **target_process_id** | **String**| process definition that process instances should be migrated to | 
 **body** | **String**| node mapping - unique ids of old definition to new definition given as Map | [optional] 

### Return type

[**MigrationReportInstanceList**](MigrationReportInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **retrigger_node_instance**
> retrigger_node_instance(id, p_instance_id, node_instance_id)

Retriggers given node instance within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that node instance belongs to

node_instance_id = 789 # Integer | identifier of node instance that should be retriggered


begin
  #Retriggers given node instance within process instance and container
  api_instance.retrigger_node_instance(id, p_instance_id, node_instance_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->retrigger_node_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that node instance belongs to | 
 **node_instance_id** | **Integer**| identifier of node instance that should be retriggered | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **trigger_node**
> trigger_node(id, p_instance_id, node_id)

Triggers node within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance where node should be triggered

node_id = 789 # Integer | identifier of the node to be triggered


begin
  #Triggers node within process instance and container
  api_instance.trigger_node(id, p_instance_id, node_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->trigger_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance where node should be triggered | 
 **node_id** | **Integer**| identifier of the node to be triggered | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **update_timer**
> update_timer(id, p_instance_id, timer_id, body, opts)

Updates timer instance within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesAdministrationBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of process instance that timer belongs to

timer_id = 789 # Integer | identifier of timer instance to be updated

body = "body_example" # String | Map of timer expressions - deplay, perios and repeat are allowed values in the map

opts = { 
  relative: true # BOOLEAN | optional flag that indicates if the time expression is relative to the current date or not, defaults to true
}

begin
  #Updates timer instance within process instance and container
  api_instance.update_timer(id, p_instance_id, timer_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesAdministrationBPMApi->update_timer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of process instance that timer belongs to | 
 **timer_id** | **Integer**| identifier of timer instance to be updated | 
 **body** | **String**| Map of timer expressions - deplay, perios and repeat are allowed values in the map | 
 **relative** | **BOOLEAN**| optional flag that indicates if the time expression is relative to the current date or not, defaults to true | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



