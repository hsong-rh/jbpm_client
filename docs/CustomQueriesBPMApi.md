# JBPMAPIClient::CustomQueriesBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_query_definition**](CustomQueriesBPMApi.md#create_query_definition) | **POST** /server/queries/definitions/{queryName} | Registers new query definition in the system with given queryName
[**drop_query_definition**](CustomQueriesBPMApi.md#drop_query_definition) | **DELETE** /server/queries/definitions/{queryName} | Deletes existing query definition from the system with given queryName
[**get_queries**](CustomQueriesBPMApi.md#get_queries) | **GET** /server/queries/definitions | Retruns all custom queries defined in the system
[**get_query**](CustomQueriesBPMApi.md#get_query) | **GET** /server/queries/definitions/{queryName} | Retrieves existing query definition from the system with given queryName
[**replace_query_definition**](CustomQueriesBPMApi.md#replace_query_definition) | **PUT** /server/queries/definitions/{queryName} | Replaces existing query definition or registers new if not exists in the system with given queryName
[**run_query**](CustomQueriesBPMApi.md#run_query) | **GET** /server/queries/definitions/{queryName}/data | Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper.
[**run_query_filtered**](CustomQueriesBPMApi.md#run_query_filtered) | **POST** /server/queries/definitions/{queryName}/filtered-data | Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
[**run_query_filtered_by_deployment_id**](CustomQueriesBPMApi.md#run_query_filtered_by_deployment_id) | **POST** /server/queries/definitions/containers/{id}/query/{queryName}/filtered-data | Queries using query definition identified by queryName filtered by container. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder


# **create_query_definition**
> QueryDefinition create_query_definition(query_name, body)

Registers new query definition in the system with given queryName



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be registered

body = "body_example" # String | query definition represented as QueryDefinition


begin
  #Registers new query definition in the system with given queryName
  result = api_instance.create_query_definition(query_name, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->create_query_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be registered | 
 **body** | **String**| query definition represented as QueryDefinition | 

### Return type

[**QueryDefinition**](QueryDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **drop_query_definition**
> drop_query_definition(query_name)

Deletes existing query definition from the system with given queryName



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

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be deleted


begin
  #Deletes existing query definition from the system with given queryName
  api_instance.drop_query_definition(query_name)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->drop_query_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be deleted | 

### Return type

nil (empty response body)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_queries**
> QueryDefinitions get_queries(opts)

Retruns all custom queries defined in the system



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retruns all custom queries defined in the system
  result = api_instance.get_queries(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->get_queries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**QueryDefinitions**](QueryDefinitions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_query**
> QueryDefinition get_query(query_name)

Retrieves existing query definition from the system with given queryName



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be retrieved


begin
  #Retrieves existing query definition from the system with given queryName
  result = api_instance.get_query(query_name)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->get_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be retrieved | 

### Return type

[**QueryDefinition**](QueryDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **replace_query_definition**
> QueryDefinition replace_query_definition(query_name, body)

Replaces existing query definition or registers new if not exists in the system with given queryName



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be replaced

body = "body_example" # String | query definition represented as QueryDefinition


begin
  #Replaces existing query definition or registers new if not exists in the system with given queryName
  result = api_instance.replace_query_definition(query_name, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->replace_query_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be replaced | 
 **body** | **String**| query definition represented as QueryDefinition | 

### Return type

[**QueryDefinition**](QueryDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **run_query**
> Array&lt;Object&gt; run_query(query_name, mapper, opts)

Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper.



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be used for query

mapper = "mapper_example" # String | identifier of the query mapper to be used when transforming results

opts = { 
  order_by: "order_by_example", # String | optional sort order
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper.
  result = api_instance.run_query(query_name, mapper, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->run_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be used for query | 
 **mapper** | **String**| identifier of the query mapper to be used when transforming results | 
 **order_by** | **String**| optional sort order | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

**Array&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **run_query_filtered**
> Object run_query_filtered(query_name, mapper, opts)

Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

query_name = "query_name_example" # String | identifier of the query definition to be used for query

mapper = "mapper_example" # String | identifier of the query mapper to be used when transforming results

opts = { 
  builder: "builder_example", # String | optional identifier of the query builder to be used for query conditions
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  body: "body_example" # String | optional query filter specification represented as QueryFilterSpec
}

begin
  #Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
  result = api_instance.run_query_filtered(query_name, mapper, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->run_query_filtered: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_name** | **String**| identifier of the query definition to be used for query | 
 **mapper** | **String**| identifier of the query mapper to be used when transforming results | 
 **builder** | **String**| optional identifier of the query builder to be used for query conditions | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **body** | **String**| optional query filter specification represented as QueryFilterSpec | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **run_query_filtered_by_deployment_id**
> Object run_query_filtered_by_deployment_id(id, query_name, mapper, opts)

Queries using query definition identified by queryName filtered by container. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder



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

api_instance = JBPMAPIClient::CustomQueriesBPMApi.new

id = "id_example" # String | container id to filter queries

query_name = "query_name_example" # String | identifier of the query definition to be used for query

mapper = "mapper_example" # String | identifier of the query mapper to be used when transforming results

opts = { 
  builder: "builder_example", # String | optional identifier of the query builder to be used for query conditions
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  body: "body_example" # String | optional query filter specification represented as QueryFilterSpec
}

begin
  #Queries using query definition identified by queryName filtered by container. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
  result = api_instance.run_query_filtered_by_deployment_id(id, query_name, mapper, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CustomQueriesBPMApi->run_query_filtered_by_deployment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id to filter queries | 
 **query_name** | **String**| identifier of the query definition to be used for query | 
 **mapper** | **String**| identifier of the query mapper to be used when transforming results | 
 **builder** | **String**| optional identifier of the query builder to be used for query conditions | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **body** | **String**| optional query filter specification represented as QueryFilterSpec | [optional] 

### Return type

**Object**

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



