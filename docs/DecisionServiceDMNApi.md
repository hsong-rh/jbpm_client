# JBPMAPIClient::DecisionServiceDMNApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**evaluate_decisions**](DecisionServiceDMNApi.md#evaluate_decisions) | **POST** /server/containers/{id}/dmn | Evaluates decisions for given imput
[**get_models**](DecisionServiceDMNApi.md#get_models) | **GET** /server/containers/{id}/dmn | Retrieves DMN model for given container


# **evaluate_decisions**
> Response evaluate_decisions(id, body)

Evaluates decisions for given imput



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DecisionServiceDMNApi.new

id = "id_example" # String | Container id to be used to evaluate decisions on

body = "body_example" # String | DMN context to be used while evaluation decisions as DMNContextKS type


begin
  #Evaluates decisions for given imput
  result = api_instance.evaluate_decisions(id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DecisionServiceDMNApi->evaluate_decisions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id to be used to evaluate decisions on | 
 **body** | **String**| DMN context to be used while evaluation decisions as DMNContextKS type | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **get_models**
> Response get_models(id)

Retrieves DMN model for given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DecisionServiceDMNApi.new

id = "id_example" # String | Container id that modesl should be loaded from


begin
  #Retrieves DMN model for given container
  result = api_instance.get_models(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DecisionServiceDMNApi->get_models: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id that modesl should be loaded from | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



