# JBPMAPIClient::RulesEvaluationBRMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manage_container**](RulesEvaluationBRMApi.md#manage_container) | **POST** /server/containers/instances/{id} | Evaluates rules by executing commands on the rule session


# **manage_container**
> Response manage_container(id, body)

Evaluates rules by executing commands on the rule session



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::RulesEvaluationBRMApi.new

id = "id_example" # String | Container id where rules should be evaluated on

body = "body_example" # String | Commands to be executed on rule engine given as BatchExecutionCommand type


begin
  #Evaluates rules by executing commands on the rule session
  result = api_instance.manage_container(id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling RulesEvaluationBRMApi->manage_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id where rules should be evaluated on | 
 **body** | **String**| Commands to be executed on rule engine given as BatchExecutionCommand type | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



