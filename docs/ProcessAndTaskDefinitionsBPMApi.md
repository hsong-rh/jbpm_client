# JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_associated_entities**](ProcessAndTaskDefinitionsBPMApi.md#get_associated_entities) | **GET** /server/containers/{id}/processes/definitions/{pId}/entities | Retrieves actors and groups that are involved in given process and container
[**get_process_definition**](ProcessAndTaskDefinitionsBPMApi.md#get_process_definition) | **GET** /server/containers/{id}/processes/definitions/{pId} | Retrieves process definition identified by given process id within given container
[**get_process_variables**](ProcessAndTaskDefinitionsBPMApi.md#get_process_variables) | **GET** /server/containers/{id}/processes/definitions/{pId}/variables | Retrieves process variables definitions that are present in given process and container
[**get_reusable_sub_processes**](ProcessAndTaskDefinitionsBPMApi.md#get_reusable_sub_processes) | **GET** /server/containers/{id}/processes/definitions/{pId}/subprocesses | Retrieves sub process definitions that are defined in given process within given container
[**get_service_tasks**](ProcessAndTaskDefinitionsBPMApi.md#get_service_tasks) | **GET** /server/containers/{id}/processes/definitions/{pId}/tasks/service | Retrieves service tasks definitions that are present in given process and container
[**get_task_input_mappings**](ProcessAndTaskDefinitionsBPMApi.md#get_task_input_mappings) | **GET** /server/containers/{id}/processes/definitions/{pId}/tasks/users/{taskName}/inputs | Retrieves input variables defined on a given user task
[**get_task_output_mappings**](ProcessAndTaskDefinitionsBPMApi.md#get_task_output_mappings) | **GET** /server/containers/{id}/processes/definitions/{pId}/tasks/users/{taskName}/outputs | Retrieves output variables defined on a given user task
[**get_tasks_definitions**](ProcessAndTaskDefinitionsBPMApi.md#get_tasks_definitions) | **GET** /server/containers/{id}/processes/definitions/{pId}/tasks/users | Retrieves user tasks definitions that are present in given process and container


# **get_associated_entities**
> ProcessAssociatedEntities get_associated_entities(id, p_id)

Retrieves actors and groups that are involved in given process and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that the involved actors and groups should be retrieved from


begin
  #Retrieves actors and groups that are involved in given process and container
  result = api_instance.get_associated_entities(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_associated_entities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that the involved actors and groups should be retrieved from | 

### Return type

[**ProcessAssociatedEntities**](ProcessAssociatedEntities.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_definition**
> ProcessDefinition get_process_definition(id, p_id)

Retrieves process definition identified by given process id within given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that the definition should be retrieved for


begin
  #Retrieves process definition identified by given process id within given container
  result = api_instance.get_process_definition(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_process_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that the definition should be retrieved for | 

### Return type

[**ProcessDefinition**](ProcessDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_variables**
> ProcessVariables get_process_variables(id, p_id)

Retrieves process variables definitions that are present in given process and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that the variable definitions should be retrieved from


begin
  #Retrieves process variables definitions that are present in given process and container
  result = api_instance.get_process_variables(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_process_variables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that the variable definitions should be retrieved from | 

### Return type

[**ProcessVariables**](ProcessVariables.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_reusable_sub_processes**
> ProcessSubprocesses get_reusable_sub_processes(id, p_id)

Retrieves sub process definitions that are defined in given process within given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that subprocesses should be retrieved from


begin
  #Retrieves sub process definitions that are defined in given process within given container
  result = api_instance.get_reusable_sub_processes(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_reusable_sub_processes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that subprocesses should be retrieved from | 

### Return type

[**ProcessSubprocesses**](ProcessSubprocesses.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_service_tasks**
> ProcessServiceTasks get_service_tasks(id, p_id)

Retrieves service tasks definitions that are present in given process and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that the service task definitions should be retrieved from


begin
  #Retrieves service tasks definitions that are present in given process and container
  result = api_instance.get_service_tasks(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_service_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that the service task definitions should be retrieved from | 

### Return type

[**ProcessServiceTasks**](ProcessServiceTasks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_input_mappings**
> ProcessTaskInputs get_task_input_mappings(id, p_id, task_name)

Retrieves input variables defined on a given user task



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that given task belongs to

task_name = "task_name_example" # String | task name that input variable definitions should be retrieved for


begin
  #Retrieves input variables defined on a given user task
  result = api_instance.get_task_input_mappings(id, p_id, task_name)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_task_input_mappings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that given task belongs to | 
 **task_name** | **String**| task name that input variable definitions should be retrieved for | 

### Return type

[**ProcessTaskInputs**](ProcessTaskInputs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_output_mappings**
> ProcessTaskOutputs get_task_output_mappings(id, p_id, task_name)

Retrieves output variables defined on a given user task



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that given task belongs to

task_name = "task_name_example" # String | task name that output variable definitions should be retrieved for


begin
  #Retrieves output variables defined on a given user task
  result = api_instance.get_task_output_mappings(id, p_id, task_name)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_task_output_mappings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that given task belongs to | 
 **task_name** | **String**| task name that output variable definitions should be retrieved for | 

### Return type

[**ProcessTaskOutputs**](ProcessTaskOutputs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_tasks_definitions**
> UserTaskDefinitions get_tasks_definitions(id, p_id)

Retrieves user tasks definitions that are present in given process and container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskDefinitionsBPMApi.new

id = "id_example" # String | container id where the process definition resides

p_id = "p_id_example" # String | process id that the user task definitions should be retrieved from


begin
  #Retrieves user tasks definitions that are present in given process and container
  result = api_instance.get_tasks_definitions(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskDefinitionsBPMApi->get_tasks_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the process definition resides | 
 **p_id** | **String**| process id that the user task definitions should be retrieved from | 

### Return type

[**UserTaskDefinitions**](UserTaskDefinitions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



