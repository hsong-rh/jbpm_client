# JBPMAPIClient::ProcessInstancesBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abort_process_instance**](ProcessInstancesBPMApi.md#abort_process_instance) | **DELETE** /server/containers/{id}/processes/instances/{pInstanceId} | Aborts active process instance identified by given id
[**abort_process_instances**](ProcessInstancesBPMApi.md#abort_process_instances) | **DELETE** /server/containers/{id}/processes/instances | Aborts active process instances identified by given list of identifiers
[**abort_work_item**](ProcessInstancesBPMApi.md#abort_work_item) | **PUT** /server/containers/{id}/processes/instances/{pInstanceId}/workitems/{workItemId}/aborted | Aborts work item identified by workItemId within process instance and container
[**complete_work_item**](ProcessInstancesBPMApi.md#complete_work_item) | **PUT** /server/containers/{id}/processes/instances/{pInstanceId}/workitems/{workItemId}/completed | Completes work item identified by workItemId within process instance and container. Optionally completion can provide outcome data - as map
[**get_available_signals**](ProcessInstancesBPMApi.md#get_available_signals) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/signals | Retrieves active process instance&#39;s (identified by given id) active signals
[**get_process_instance**](ProcessInstancesBPMApi.md#get_process_instance) | **GET** /server/containers/{id}/processes/instances/{pInstanceId} | Retrieves process instance identified by given id optionally with variables (variables will be loaded only for active process instance)
[**get_process_instance_history_by_container_id**](ProcessInstancesBPMApi.md#get_process_instance_history_by_container_id) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/nodes/instances | Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
[**get_process_instance_processes**](ProcessInstancesBPMApi.md#get_process_instance_processes) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/processes | Retrieves process instances that belong to given container and have given parent process instance, optionally allow to filter by process instance state.
[**get_process_instance_variable**](ProcessInstancesBPMApi.md#get_process_instance_variable) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/variable/{varName} | Retrieves active process instance&#39;s (identified by given id) variable given as variable name
[**get_process_instance_variables**](ProcessInstancesBPMApi.md#get_process_instance_variables) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/variables | Retrieves active process instance&#39;s (identified by given id) variables, variables are returned as map where key is the variable name (string) and value is variable value (any type)
[**get_process_instances_by_container_id**](ProcessInstancesBPMApi.md#get_process_instances_by_container_id) | **GET** /server/containers/{id}/processes/instances | Retrieves process instances that belong to given container
[**get_processes_by_deployment_id**](ProcessInstancesBPMApi.md#get_processes_by_deployment_id) | **GET** /server/containers/{id}/processes | Retrieves process definitions that belong to given container
[**get_variable_history**](ProcessInstancesBPMApi.md#get_variable_history) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/variables/instances/{varName} | Retrieves variable history (from audit logs) for given variable name that belongs to process instance
[**get_variables_current_state**](ProcessInstancesBPMApi.md#get_variables_current_state) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/variables/instances | Retrieves variables last value (from audit logs) for given process instance
[**get_work_item**](ProcessInstancesBPMApi.md#get_work_item) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/workitems/{workItemId} | Retrieves work item identified by workItemId within process instance and container
[**get_work_item_by_process_instance**](ProcessInstancesBPMApi.md#get_work_item_by_process_instance) | **GET** /server/containers/{id}/processes/instances/{pInstanceId}/workitems | Retrieves work items within process instance and container
[**set_process_variable**](ProcessInstancesBPMApi.md#set_process_variable) | **PUT** /server/containers/{id}/processes/instances/{pInstanceId}/variable/{varName} | Updates active process instance&#39;s (identified by given id) variable with given name
[**set_process_variables**](ProcessInstancesBPMApi.md#set_process_variables) | **POST** /server/containers/{id}/processes/instances/{pInstanceId}/variables | Updates active process instance&#39;s (identified by given id) variables given as map in the body
[**signal_process_instance**](ProcessInstancesBPMApi.md#signal_process_instance) | **POST** /server/containers/{id}/processes/instances/{pInstanceId}/signal/{sName} | Signals active process instance identified by given id with singal name and optional event data
[**signal_process_instances**](ProcessInstancesBPMApi.md#signal_process_instances) | **POST** /server/containers/{id}/processes/instances/signal/{sName} | Signals active process instances identified by given ids with singal name and optional event data
[**start_process**](ProcessInstancesBPMApi.md#start_process) | **POST** /server/containers/{id}/processes/{pId}/instances | Starts new process instance of given process definition within given container with optional variables
[**start_process_with_correlation**](ProcessInstancesBPMApi.md#start_process_with_correlation) | **POST** /server/containers/{id}/processes/{pId}/instances/correlation/{correlationKey} | Starts new process instance with correlation key of given process definition within given container with optional variables


# **abort_process_instance**
> abort_process_instance(id, p_instance_id)

Aborts active process instance identified by given id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance to be aborted


begin
  #Aborts active process instance identified by given id
  api_instance.abort_process_instance(id, p_instance_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->abort_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance to be aborted | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **abort_process_instances**
> abort_process_instances(id, instance_id)

Aborts active process instances identified by given list of identifiers



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

instance_id = [56] # Array<Integer> | list of identifiers of the process instances to be aborted


begin
  #Aborts active process instances identified by given list of identifiers
  api_instance.abort_process_instances(id, instance_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->abort_process_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **instance_id** | [**Array&lt;Integer&gt;**](Integer.md)| list of identifiers of the process instances to be aborted | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **abort_work_item**
> abort_work_item(id, p_instance_id, work_item_id)

Aborts work item identified by workItemId within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that work item belongs to

work_item_id = 789 # Integer | identifier of the work item to abort


begin
  #Aborts work item identified by workItemId within process instance and container
  api_instance.abort_work_item(id, p_instance_id, work_item_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->abort_work_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that work item belongs to | 
 **work_item_id** | **Integer**| identifier of the work item to abort | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **complete_work_item**
> complete_work_item(id, p_instance_id, work_item_id, opts)

Completes work item identified by workItemId within process instance and container. Optionally completion can provide outcome data - as map



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that work item belongs to

work_item_id = 789 # Integer | identifier of the work item to complete

opts = { 
  body: "body_example" # String | optional outcome data give as map
}

begin
  #Completes work item identified by workItemId within process instance and container. Optionally completion can provide outcome data - as map
  api_instance.complete_work_item(id, p_instance_id, work_item_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->complete_work_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that work item belongs to | 
 **work_item_id** | **Integer**| identifier of the work item to complete | 
 **body** | **String**| optional outcome data give as map | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **get_available_signals**
> Array&lt;String&gt; get_available_signals(id, p_instance_id)

Retrieves active process instance's (identified by given id) active signals



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that signals should be collected for


begin
  #Retrieves active process instance's (identified by given id) active signals
  result = api_instance.get_available_signals(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_available_signals: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that signals should be collected for | 

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance**
> ProcessInstance get_process_instance(id, p_instance_id, opts)

Retrieves process instance identified by given id optionally with variables (variables will be loaded only for active process instance)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance to be fetched

opts = { 
  with_vars: true # BOOLEAN | indicates if process instance variables should be loaded or not
}

begin
  #Retrieves process instance identified by given id optionally with variables (variables will be loaded only for active process instance)
  result = api_instance.get_process_instance(id, p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance to be fetched | 
 **with_vars** | **BOOLEAN**| indicates if process instance variables should be loaded or not | [optional] 

### Return type

[**ProcessInstance**](ProcessInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_history_by_container_id**
> NodeInstanceList get_process_instance_history_by_container_id(id, p_instance_id, opts)

Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that history should be collected for

opts = { 
  active_only: true, # BOOLEAN | instructs if active nodes only should be collected, defaults to false
  completed_only: true, # BOOLEAN | instructs if completed nodes only should be collected, defaults to false
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves node instances for given process instance. Depending on provided query parameters (activeOnly or completedOnly) will return active and/or completes nodes
  result = api_instance.get_process_instance_history_by_container_id(id, p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instance_history_by_container_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that history should be collected for | 
 **active_only** | **BOOLEAN**| instructs if active nodes only should be collected, defaults to false | [optional] 
 **completed_only** | **BOOLEAN**| instructs if completed nodes only should be collected, defaults to false | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**NodeInstanceList**](NodeInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_processes**
> ProcessInstanceList get_process_instance_processes(id, p_instance_id, opts)

Retrieves process instances that belong to given container and have given parent process instance, optionally allow to filter by process instance state.



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the parent process instance that process instances should be collected for

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances that belong to given container and have given parent process instance, optionally allow to filter by process instance state.
  result = api_instance.get_process_instance_processes(id, p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instance_processes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the parent process instance that process instances should be collected for | 
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



# **get_process_instance_variable**
> Object get_process_instance_variable(id, p_instance_id, var_name)

Retrieves active process instance's (identified by given id) variable given as variable name



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that variable should be retrieved from

var_name = "var_name_example" # String | variable name to be retrieved


begin
  #Retrieves active process instance's (identified by given id) variable given as variable name
  result = api_instance.get_process_instance_variable(id, p_instance_id, var_name)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instance_variable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that variable should be retrieved from | 
 **var_name** | **String**| variable name to be retrieved | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instance_variables**
> Hash&lt;String, Object&gt; get_process_instance_variables(id, p_instance_id)

Retrieves active process instance's (identified by given id) variables, variables are returned as map where key is the variable name (string) and value is variable value (any type)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that variables should be retrieved from


begin
  #Retrieves active process instance's (identified by given id) variables, variables are returned as map where key is the variable name (string) and value is variable value (any type)
  result = api_instance.get_process_instance_variables(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instance_variables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that variables should be retrieved from | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_instances_by_container_id**
> ProcessInstanceList get_process_instances_by_container_id(id, opts)

Retrieves process instances that belong to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances that belong to given container
  result = api_instance.get_process_instances_by_container_id(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_process_instances_by_container_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
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



# **get_processes_by_deployment_id**
> ProcessDefinitions get_processes_by_deployment_id(id, opts)

Retrieves process definitions that belong to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process definitions that belong to given container
  result = api_instance.get_processes_by_deployment_id(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_processes_by_deployment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
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



# **get_variable_history**
> VariableInstanceList get_variable_history(id, p_instance_id, var_name, opts)

Retrieves variable history (from audit logs) for given variable name that belongs to process instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that variable history should be collected for

var_name = "var_name_example" # String | name of the variables that history should be collected for

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves variable history (from audit logs) for given variable name that belongs to process instance
  result = api_instance.get_variable_history(id, p_instance_id, var_name, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_variable_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that variable history should be collected for | 
 **var_name** | **String**| name of the variables that history should be collected for | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**VariableInstanceList**](VariableInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_variables_current_state**
> VariableInstanceList get_variables_current_state(id, p_instance_id)

Retrieves variables last value (from audit logs) for given process instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that variables state should be collected for


begin
  #Retrieves variables last value (from audit logs) for given process instance
  result = api_instance.get_variables_current_state(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_variables_current_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that variables state should be collected for | 

### Return type

[**VariableInstanceList**](VariableInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_work_item**
> WorkItemInstance get_work_item(id, p_instance_id, work_item_id)

Retrieves work item identified by workItemId within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that work item belongs to

work_item_id = 789 # Integer | identifier of the work item to retrieve


begin
  #Retrieves work item identified by workItemId within process instance and container
  result = api_instance.get_work_item(id, p_instance_id, work_item_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_work_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that work item belongs to | 
 **work_item_id** | **Integer**| identifier of the work item to retrieve | 

### Return type

[**WorkItemInstance**](WorkItemInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_work_item_by_process_instance**
> WorkItemInstanceList get_work_item_by_process_instance(id, p_instance_id)

Retrieves work items within process instance and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that work items belong to


begin
  #Retrieves work items within process instance and container
  result = api_instance.get_work_item_by_process_instance(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->get_work_item_by_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that work items belong to | 

### Return type

[**WorkItemInstanceList**](WorkItemInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_process_variable**
> set_process_variable(id, p_instance_id, var_name, body)

Updates active process instance's (identified by given id) variable with given name



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance to be updated

var_name = "var_name_example" # String | name of the variable to be set/updated

body = "body_example" # String | variable data - any type can be provided


begin
  #Updates active process instance's (identified by given id) variable with given name
  api_instance.set_process_variable(id, p_instance_id, var_name, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->set_process_variable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance to be updated | 
 **var_name** | **String**| name of the variable to be set/updated | 
 **body** | **String**| variable data - any type can be provided | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **set_process_variables**
> set_process_variables(id, p_instance_id, body)

Updates active process instance's (identified by given id) variables given as map in the body



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance to be updated

body = "body_example" # String | variable data give as map


begin
  #Updates active process instance's (identified by given id) variables given as map in the body
  api_instance.set_process_variables(id, p_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->set_process_variables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance to be updated | 
 **body** | **String**| variable data give as map | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **signal_process_instance**
> signal_process_instance(id, p_instance_id, s_name, opts)

Signals active process instance identified by given id with singal name and optional event data



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance to be signaled

s_name = "s_name_example" # String | signal name to be send to process instance

opts = { 
  body: "body_example" # String | optional event data - any type can be provided
}

begin
  #Signals active process instance identified by given id with singal name and optional event data
  api_instance.signal_process_instance(id, p_instance_id, s_name, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->signal_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance to be signaled | 
 **s_name** | **String**| signal name to be send to process instance | 
 **body** | **String**| optional event data - any type can be provided | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **signal_process_instances**
> signal_process_instances(id, instance_id, s_name, opts)

Signals active process instances identified by given ids with singal name and optional event data



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

instance_id = [56] # Array<Integer> | list of identifiers of the process instances to be signaled

s_name = "s_name_example" # String | signal name to be send to process instance

opts = { 
  body: "body_example" # String | optional event data - any type can be provided
}

begin
  #Signals active process instances identified by given ids with singal name and optional event data
  api_instance.signal_process_instances(id, instance_id, s_name, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->signal_process_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **instance_id** | [**Array&lt;Integer&gt;**](Integer.md)| list of identifiers of the process instances to be signaled | 
 **s_name** | **String**| signal name to be send to process instance | 
 **body** | **String**| optional event data - any type can be provided | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **start_process**
> Integer start_process(id, p_id, opts)

Starts new process instance of given process definition within given container with optional variables



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that new instance should be created from

opts = { 
  body: "body_example" # String | optional map of process variables
}

begin
  #Starts new process instance of given process definition within given container with optional variables
  result = api_instance.start_process(id, p_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->start_process: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that new instance should be created from | 
 **body** | **String**| optional map of process variables | [optional] 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **start_process_with_correlation**
> Integer start_process_with_correlation(id, p_id, correlation_key, opts)

Starts new process instance with correlation key of given process definition within given container with optional variables



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessInstancesBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that new instance should be created from

correlation_key = "correlation_key_example" # String | correlation key to be assigned to process instance

opts = { 
  body: "body_example" # String | optional map of process variables
}

begin
  #Starts new process instance with correlation key of given process definition within given container with optional variables
  result = api_instance.start_process_with_correlation(id, p_id, correlation_key, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessInstancesBPMApi->start_process_with_correlation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that new instance should be created from | 
 **correlation_key** | **String**| correlation key to be assigned to process instance | 
 **body** | **String**| optional map of process variables | [optional] 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



