# JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_case_definitions**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_definitions) | **GET** /server/queries/cases | Retrieves case definitions with filtering by name or id of the case definition and applies pagination
[**get_case_instance_data_items**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instance_data_items) | **GET** /server/queries/cases/instances/{caseId}/caseFile | Retrieves case instance data items, allows to filter by name or type of data and applies pagination
[**get_case_instance_tasks_as_admin**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instance_tasks_as_admin) | **GET** /server/queries/cases/instances/{caseId}/tasks/instances/admins | Retrieves case instance tasks assigned as business admin, allows to filter by task status and applies pagination
[**get_case_instance_tasks_as_potential_owner**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instance_tasks_as_potential_owner) | **GET** /server/queries/cases/instances/{caseId}/tasks/instances/pot-owners | Retrieves case instance tasks assigned as potential owner, allows to filter by task status and applies pagination
[**get_case_instance_tasks_as_stakeholder**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instance_tasks_as_stakeholder) | **GET** /server/queries/cases/instances/{caseId}/tasks/instances/stakeholders | Retrieves case instance tasks assigned as stakeholder, allows to filter by task status and applies pagination
[**get_case_instances**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instances) | **GET** /server/queries/cases/instances | Retrieves case instances with authentication checks and applies pagination, allows to filter by data (case file) name and value, owner and case instance status
[**get_case_instances_by_role**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_case_instances_by_role) | **GET** /server/queries/cases/{caseRoleName}/instances | Retrieves case instances where user is involved in given role and applies pagination, allows to filter by case instance status
[**get_process_definitions**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_process_definitions) | **GET** /server/queries/cases/processes | Retrieves process definitions with filtering by name or id of the process definition and applies pagination
[**get_process_definitions_by_container**](QueriesCaseDefinitionsAndInstancesCaseManagementApi.md#get_process_definitions_by_container) | **GET** /server/queries/cases/{id}/processes | Retrieves process definitions that belong to given container and applies pagination


# **get_case_definitions**
> CaseInstanceList get_case_definitions(filter, opts)

Retrieves case definitions with filtering by name or id of the case definition and applies pagination



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

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

filter = "filter_example" # String | case definition id or name that case definitions will be filtered by

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case definitions with filtering by name or id of the case definition and applies pagination
  result = api_instance.get_case_definitions(filter, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| case definition id or name that case definitions will be filtered by | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_data_items**
> CaseInstanceList get_case_instance_data_items(case_id, opts)

Retrieves case instance data items, allows to filter by name or type of data and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

case_id = "case_id_example" # String | case instance identifier that data items should belong to

opts = { 
  name: ["name_example"], # Array<String> | optionally filter by data item names
  type: ["type_example"], # Array<String> | optionally filter by data item types
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves case instance data items, allows to filter by name or type of data and applies pagination
  result = api_instance.get_case_instance_data_items(case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instance_data_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| case instance identifier that data items should belong to | 
 **name** | [**Array&lt;String&gt;**](String.md)| optionally filter by data item names | [optional] 
 **type** | [**Array&lt;String&gt;**](String.md)| optionally filter by data item types | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_tasks_as_admin**
> CaseInstanceList get_case_instance_tasks_as_admin(case_id, opts)

Retrieves case instance tasks assigned as business admin, allows to filter by task status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

case_id = "case_id_example" # String | case instance identifier that tasks should belong to

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instance tasks assigned as business admin, allows to filter by task status and applies pagination
  result = api_instance.get_case_instance_tasks_as_admin(case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instance_tasks_as_admin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| case instance identifier that tasks should belong to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_tasks_as_potential_owner**
> CaseInstanceList get_case_instance_tasks_as_potential_owner(case_id, opts)

Retrieves case instance tasks assigned as potential owner, allows to filter by task status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

case_id = "case_id_example" # String | case instance identifier that tasks should belong to

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instance tasks assigned as potential owner, allows to filter by task status and applies pagination
  result = api_instance.get_case_instance_tasks_as_potential_owner(case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instance_tasks_as_potential_owner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| case instance identifier that tasks should belong to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_tasks_as_stakeholder**
> CaseInstanceList get_case_instance_tasks_as_stakeholder(case_id, opts)

Retrieves case instance tasks assigned as stakeholder, allows to filter by task status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

case_id = "case_id_example" # String | case instance identifier that tasks should belong to

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  status: ["status_example"], # Array<String> | optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instance tasks assigned as stakeholder, allows to filter by task status and applies pagination
  result = api_instance.get_case_instance_tasks_as_stakeholder(case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instance_tasks_as_stakeholder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| case instance identifier that tasks should belong to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| optional task status (Created, Ready, Reserved, InProgress, Suspended, Completed, Failed, Error, Exited, Obsolete) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instances**
> CaseInstanceList get_case_instances(opts)

Retrieves case instances with authentication checks and applies pagination, allows to filter by data (case file) name and value, owner and case instance status



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

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

opts = { 
  data_item_name: "data_item_name_example", # String | data item name that case instances will be filtered by
  data_item_value: "data_item_value_example", # String | data item value that case instances will be filtered by
  owner: "owner_example", # String | case instance owner that case instances will be filtered by
  status: ["status_example"], # Array<String> | optional case instance status (open, closed, canceled) - defaults ot open (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instances with authentication checks and applies pagination, allows to filter by data (case file) name and value, owner and case instance status
  result = api_instance.get_case_instances(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_item_name** | **String**| data item name that case instances will be filtered by | [optional] 
 **data_item_value** | **String**| data item value that case instances will be filtered by | [optional] 
 **owner** | **String**| case instance owner that case instances will be filtered by | [optional] 
 **status** | [**Array&lt;String&gt;**](String.md)| optional case instance status (open, closed, canceled) - defaults ot open (1) only | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instances_by_role**
> CaseInstanceList get_case_instances_by_role(case_role_name, opts)

Retrieves case instances where user is involved in given role and applies pagination, allows to filter by case instance status



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

case_role_name = "case_role_name_example" # String | case role that instances should be found for

opts = { 
  status: ["status_example"], # Array<String> | optional case instance status (open, closed, canceled) - defaults ot open (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instances where user is involved in given role and applies pagination, allows to filter by case instance status
  result = api_instance.get_case_instances_by_role(case_role_name, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_case_instances_by_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_role_name** | **String**| case role that instances should be found for | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional case instance status (open, closed, canceled) - defaults ot open (1) only | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_definitions**
> CaseInstanceList get_process_definitions(filter, opts)

Retrieves process definitions with filtering by name or id of the process definition and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

filter = "filter_example" # String | process definition id or name that process definitions will be filtered by

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process definitions with filtering by name or id of the process definition and applies pagination
  result = api_instance.get_process_definitions(filter, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_process_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| process definition id or name that process definitions will be filtered by | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_process_definitions_by_container**
> CaseInstanceList get_process_definitions_by_container(id, opts)

Retrieves process definitions that belong to given container and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::QueriesCaseDefinitionsAndInstancesCaseManagementApi.new

id = "id_example" # String | container id that process definitions should be filtered by

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process definitions that belong to given container and applies pagination
  result = api_instance.get_process_definitions_by_container(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling QueriesCaseDefinitionsAndInstancesCaseManagementApi->get_process_definitions_by_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that process definitions should be filtered by | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseInstanceList**](CaseInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



