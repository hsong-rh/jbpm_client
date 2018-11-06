# JBPMAPIClient::KIEServerCoreApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_container**](KIEServerCoreApi.md#create_container) | **PUT** /server/containers/{id} | Creates (deploys) new KIE container to this server
[**dispose_container**](KIEServerCoreApi.md#dispose_container) | **DELETE** /server/containers/{id} | Disposes (undeploys) container with given id
[**get_container_info**](KIEServerCoreApi.md#get_container_info) | **GET** /server/containers/{id} | Retrieves container with given id
[**get_info**](KIEServerCoreApi.md#get_info) | **GET** /server | Retrieves KIE Server information - id, name, location, capabilities, messages
[**get_release_id**](KIEServerCoreApi.md#get_release_id) | **GET** /server/containers/{id}/release-id | Retrieves release id of the KIE container with given id
[**get_scanner_info**](KIEServerCoreApi.md#get_scanner_info) | **GET** /server/containers/{id}/scanner | Retrieves scanner information for given container
[**get_server_state**](KIEServerCoreApi.md#get_server_state) | **GET** /server/state | Retrieves server state - configuration that the server is currently running with
[**healthcheck**](KIEServerCoreApi.md#healthcheck) | **GET** /server/healthcheck | Liveness check for KIE Server that validates both kie server and all extensions, optionally produces report
[**list_containers**](KIEServerCoreApi.md#list_containers) | **GET** /server/containers | Retrieves containers deployed to this server, optionally filtered by group, artifact, version or status
[**readycheck**](KIEServerCoreApi.md#readycheck) | **GET** /server/readycheck | Readiness check for KIE Server that indicates that server is fully booted and ready to accept requests
[**update_release_id**](KIEServerCoreApi.md#update_release_id) | **POST** /server/containers/{id}/release-id | Updates release id of the KIE container with given id to provided release id
[**update_scanner**](KIEServerCoreApi.md#update_scanner) | **POST** /server/containers/{id}/scanner | Updates scanner for given container


# **create_container**
> Response create_container(id, body)

Creates (deploys) new KIE container to this server



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id to be assigned to deployed KIE Container

body = "body_example" # String | KIE Container resource to be deployed as KieContainerResource


begin
  #Creates (deploys) new KIE container to this server
  result = api_instance.create_container(id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->create_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id to be assigned to deployed KIE Container | 
 **body** | **String**| KIE Container resource to be deployed as KieContainerResource | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **dispose_container**
> Response dispose_container(id)

Disposes (undeploys) container with given id



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

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id to be disposed (undeployed)


begin
  #Disposes (undeploys) container with given id
  result = api_instance.dispose_container(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->dispose_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id to be disposed (undeployed) | 

### Return type

[**Response**](Response.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_container_info**
> Response get_container_info(id)

Retrieves container with given id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id to be retrieved


begin
  #Retrieves container with given id
  result = api_instance.get_container_info(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->get_container_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id to be retrieved | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_info**
> Response get_info

Retrieves KIE Server information - id, name, location, capabilities, messages



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

begin
  #Retrieves KIE Server information - id, name, location, capabilities, messages
  result = api_instance.get_info
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->get_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_release_id**
> Response get_release_id(id)

Retrieves release id of the KIE container with given id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id that release id should be loaded from


begin
  #Retrieves release id of the KIE container with given id
  result = api_instance.get_release_id(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->get_release_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id that release id should be loaded from | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_scanner_info**
> Response get_scanner_info(id)

Retrieves scanner information for given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id for scanner to be loaded


begin
  #Retrieves scanner information for given container
  result = api_instance.get_scanner_info(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->get_scanner_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id for scanner to be loaded | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_server_state**
> Response get_server_state

Retrieves server state - configuration that the server is currently running with



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

api_instance = JBPMAPIClient::KIEServerCoreApi.new

begin
  #Retrieves server state - configuration that the server is currently running with
  result = api_instance.get_server_state
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->get_server_state: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Response**](Response.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **healthcheck**
> Array&lt;KieMessage&gt; healthcheck(opts)

Liveness check for KIE Server that validates both kie server and all extensions, optionally produces report



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

opts = { 
  report: false # BOOLEAN | optional report flag to return detailed report of the check, defaults to false
}

begin
  #Liveness check for KIE Server that validates both kie server and all extensions, optionally produces report
  result = api_instance.healthcheck(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->healthcheck: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **BOOLEAN**| optional report flag to return detailed report of the check, defaults to false | [optional] [default to false]

### Return type

[**Array&lt;KieMessage&gt;**](KieMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **list_containers**
> Response list_containers(opts)

Retrieves containers deployed to this server, optionally filtered by group, artifact, version or status



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

api_instance = JBPMAPIClient::KIEServerCoreApi.new

opts = { 
  group_id: "group_id_example", # String | optional groupId to filter containers by
  artifact_id: "artifact_id_example", # String | optional artifactId to filter containers by
  version: "version_example", # String | optional version to filter containers by
  status: "status_example" # String | optional status to filter containers by
}

begin
  #Retrieves containers deployed to this server, optionally filtered by group, artifact, version or status
  result = api_instance.list_containers(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->list_containers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| optional groupId to filter containers by | [optional] 
 **artifact_id** | **String**| optional artifactId to filter containers by | [optional] 
 **version** | **String**| optional version to filter containers by | [optional] 
 **status** | **String**| optional status to filter containers by | [optional] 

### Return type

[**Response**](Response.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **readycheck**
> readycheck

Readiness check for KIE Server that indicates that server is fully booted and ready to accept requests



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

api_instance = JBPMAPIClient::KIEServerCoreApi.new

begin
  #Readiness check for KIE Server that indicates that server is fully booted and ready to accept requests
  api_instance.readycheck
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->readycheck: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain



# **update_release_id**
> Response update_release_id(id, body)

Updates release id of the KIE container with given id to provided release id



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id that release id should be upgraded

body = "body_example" # String | Release Id to be upgraded to as ReleaseId type


begin
  #Updates release id of the KIE container with given id to provided release id
  result = api_instance.update_release_id(id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->update_release_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id that release id should be upgraded | 
 **body** | **String**| Release Id to be upgraded to as ReleaseId type | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **update_scanner**
> Response update_scanner(id, body)

Updates scanner for given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::KIEServerCoreApi.new

id = "id_example" # String | Container id for scanner to be updated

body = "body_example" # String | Scanner information given as KieScannerResource type


begin
  #Updates scanner for given container
  result = api_instance.update_scanner(id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling KIEServerCoreApi->update_scanner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Container id for scanner to be updated | 
 **body** | **String**| Scanner information given as KieScannerResource type | 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



