# JBPMAPIClient::ProcessDefinitionAndInstanceImagesBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_process_image**](ProcessDefinitionAndInstanceImagesBPMApi.md#get_process_image) | **GET** /server/containers/{id}/images/processes/{pId} | Retrieves process definition image
[**get_process_instance_image**](ProcessDefinitionAndInstanceImagesBPMApi.md#get_process_instance_image) | **GET** /server/containers/{id}/images/processes/instances/{pInstanceId} | Retrieves process instance image


# **get_process_image**
> String get_process_image(id, p_id)

Retrieves process definition image



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessDefinitionAndInstanceImagesBPMApi.new

id = "id_example" # String | container id that process definition belongs to

p_id = "p_id_example" # String | identifier of the process definition that image should be loaded for


begin
  #Retrieves process definition image
  result = api_instance.get_process_image(id, p_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessDefinitionAndInstanceImagesBPMApi->get_process_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process definition belongs to | 
 **p_id** | **String**| identifier of the process definition that image should be loaded for | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/svg+xml



# **get_process_instance_image**
> String get_process_instance_image(id, p_instance_id)

Retrieves process instance image



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::ProcessDefinitionAndInstanceImagesBPMApi.new

id = "id_example" # String | container id that process instance belongs to

p_instance_id = 789 # Integer | identifier of the process instance that image should be loaded for


begin
  #Retrieves process instance image
  result = api_instance.get_process_instance_image(id, p_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling ProcessDefinitionAndInstanceImagesBPMApi->get_process_instance_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process instance belongs to | 
 **p_instance_id** | **Integer**| identifier of the process instance that image should be loaded for | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/svg+xml



