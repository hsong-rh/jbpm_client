# JBPMAPIClient::KIEServerScriptCoreApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_commands**](KIEServerScriptCoreApi.md#execute_commands) | **POST** /server/config | Executes command script on execution server, usually used as a batch to configure KIE Server


# **execute_commands**
> Responses execute_commands(body)

Executes command script on execution server, usually used as a batch to configure KIE Server



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

api_instance = JBPMAPIClient::KIEServerScriptCoreApi.new

body = "body_example" # String | command script payload


begin
  #Executes command script on execution server, usually used as a batch to configure KIE Server
  result = api_instance.execute_commands(body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerScriptCoreApi->execute_commands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| command script payload | 

### Return type

[**Responses**](Responses.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



