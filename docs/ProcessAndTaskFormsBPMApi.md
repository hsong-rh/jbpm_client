# JBPMAPIClient::ProcessAndTaskFormsBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_process_form**](ProcessAndTaskFormsBPMApi.md#get_process_form) | **GET** /server/containers/{id}/forms/processes/{pId} | Retrieves form for process definition within a container
[**get_task_form**](ProcessAndTaskFormsBPMApi.md#get_task_form) | **GET** /server/containers/{id}/forms/tasks/{tInstanceId} | Retrieves form for task instance within a container


# **get_process_form**
> String get_process_form(id, p_id, opts)

Retrieves form for process definition within a container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskFormsBPMApi.new

id = "id_example" # String | container id that process definition belongs to

p_id = "p_id_example" # String | identifier of process definition that form should be fetched for

opts = { 
  lang: "en", # String | optional language that the form should be found for
  filter: true, # BOOLEAN | optional filter flag if form should be filtered or returned as is
  type: "ANY", # String | optional type of the form, defaults to ANY so system will find the most current one
  marshall_content: true # BOOLEAN | optional marshall content flag if the content should be transformed or not, defaults to true
}

begin
  #Retrieves form for process definition within a container
  result = api_instance.get_process_form(id, p_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskFormsBPMApi->get_process_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process definition belongs to | 
 **p_id** | **String**| identifier of process definition that form should be fetched for | 
 **lang** | **String**| optional language that the form should be found for | [optional] [default to en]
 **filter** | **BOOLEAN**| optional filter flag if form should be filtered or returned as is | [optional] 
 **type** | **String**| optional type of the form, defaults to ANY so system will find the most current one | [optional] [default to ANY]
 **marshall_content** | **BOOLEAN**| optional marshall content flag if the content should be transformed or not, defaults to true | [optional] [default to true]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_form**
> String get_task_form(id, t_instance_id, opts)

Retrieves form for task instance within a container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessAndTaskFormsBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of task instance that form should be fetched for

opts = { 
  lang: "en", # String | optional language that the form should be found for
  filter: true, # BOOLEAN | optional filter flag if form should be filtered or returned as is
  type: "ANY", # String | optional type of the form, defaults to ANY so system will find the most current one
  marshall_content: true # BOOLEAN | optional marshall content flag if the content should be transformed or not, defaults to true
}

begin
  #Retrieves form for task instance within a container
  result = api_instance.get_task_form(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessAndTaskFormsBPMApi->get_task_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of task instance that form should be fetched for | 
 **lang** | **String**| optional language that the form should be found for | [optional] [default to en]
 **filter** | **BOOLEAN**| optional filter flag if form should be filtered or returned as is | [optional] 
 **type** | **String**| optional type of the form, defaults to ANY so system will find the most current one | [optional] [default to ANY]
 **marshall_content** | **BOOLEAN**| optional marshall content flag if the content should be transformed or not, defaults to true | [optional] [default to true]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



