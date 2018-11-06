# JBPMAPIClient::CaseInstancesCaseManagementApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](CaseInstancesCaseManagementApi.md#add_comment) | **POST** /server/containers/{id}/cases/instances/{caseId}/comments | Adds new comment to given case instance
[**add_dynamic_process_to_case**](CaseInstancesCaseManagementApi.md#add_dynamic_process_to_case) | **POST** /server/containers/{id}/cases/instances/{caseId}/processes/{pId} | Adds dynamic subprocess identified by process id to case instance
[**add_dynamic_stage_process_to_case**](CaseInstancesCaseManagementApi.md#add_dynamic_stage_process_to_case) | **POST** /server/containers/{id}/cases/instances/{caseId}/stages/{caseStageId}/processes/{pId} | Adds dynamic subprocess identified by process id to stage within case instance
[**add_dynamic_stage_task_to_case**](CaseInstancesCaseManagementApi.md#add_dynamic_stage_task_to_case) | **POST** /server/containers/{id}/cases/instances/{caseId}/stages/{caseStageId}/tasks | Adds dynamic task (user or service depending on the payload) to given stage within case instance
[**add_dynamic_task_to_case**](CaseInstancesCaseManagementApi.md#add_dynamic_task_to_case) | **POST** /server/containers/{id}/cases/instances/{caseId}/tasks | Adds dynamic task (user or service depending on the payload) to case instance
[**add_role_assignment**](CaseInstancesCaseManagementApi.md#add_role_assignment) | **PUT** /server/containers/{id}/cases/instances/{caseId}/roles/{caseRoleName} | Adds new role assignment for given case, it can be either user or group based assignment
[**cancel_case_instance**](CaseInstancesCaseManagementApi.md#cancel_case_instance) | **DELETE** /server/containers/{id}/cases/instances/{caseId} | Cancels case instance with given identifier (case id) and has optional flag to permanently destroy the case instance
[**close_case_instance**](CaseInstancesCaseManagementApi.md#close_case_instance) | **POST** /server/containers/{id}/cases/instances/{caseId} | Closes case instance with given identifier (case id) optionally with comment
[**delete_case_instance_data**](CaseInstancesCaseManagementApi.md#delete_case_instance_data) | **DELETE** /server/containers/{id}/cases/instances/{caseId}/caseFile | Removes data items identified by name(s) from case instance&#39;s case file
[**get_case_definitions_by_container**](CaseInstancesCaseManagementApi.md#get_case_definitions_by_container) | **GET** /server/containers/{id}/cases/definitions | Retrieves case definition for given container only, applies pagination
[**get_case_definitions_by_definition**](CaseInstancesCaseManagementApi.md#get_case_definitions_by_definition) | **GET** /server/containers/{id}/cases/definitions/{caseDefId} | Retrieves case definition for given container and case definition id
[**get_case_instance**](CaseInstancesCaseManagementApi.md#get_case_instance) | **GET** /server/containers/{id}/cases/instances/{caseId} | Retrieves active case instance by given identifier (case id) with optionally loading data, roles, milestones and stages
[**get_case_instance_active_nodes**](CaseInstancesCaseManagementApi.md#get_case_instance_active_nodes) | **GET** /server/containers/{id}/cases/instances/{caseId}/nodes/instances | Retrieves node instances from case instance
[**get_case_instance_ad_hoc_fragments**](CaseInstancesCaseManagementApi.md#get_case_instance_ad_hoc_fragments) | **GET** /server/containers/{id}/cases/instances/{caseId}/adhocfragments | Retrieves adhoc fragments from case instance
[**get_case_instance_comments**](CaseInstancesCaseManagementApi.md#get_case_instance_comments) | **GET** /server/containers/{id}/cases/instances/{caseId}/comments | Retrieves comments from case instance
[**get_case_instance_data**](CaseInstancesCaseManagementApi.md#get_case_instance_data) | **GET** /server/containers/{id}/cases/instances/{caseId}/caseFile | Retrieves case instance data as map where key is the name of data item and value is actual instance of the data item from case file
[**get_case_instance_data_by_name**](CaseInstancesCaseManagementApi.md#get_case_instance_data_by_name) | **GET** /server/containers/{id}/cases/instances/{caseId}/caseFile/{dataId} | Retrieves case instance data by data item name
[**get_case_instance_milestones**](CaseInstancesCaseManagementApi.md#get_case_instance_milestones) | **GET** /server/containers/{id}/cases/instances/{caseId}/milestones | Retrieves milestones from case instance
[**get_case_instance_process_instance**](CaseInstancesCaseManagementApi.md#get_case_instance_process_instance) | **GET** /server/containers/{id}/cases/instances/{caseId}/processes/instances | Retrieves process instances that compose complete case instance
[**get_case_instance_role_assignments**](CaseInstancesCaseManagementApi.md#get_case_instance_role_assignments) | **GET** /server/containers/{id}/cases/instances/{caseId}/roles | Retrieves role assignments from case instance
[**get_case_instance_stages**](CaseInstancesCaseManagementApi.md#get_case_instance_stages) | **GET** /server/containers/{id}/cases/instances/{caseId}/stages | Retrieves stages from case instance
[**get_case_instances_by_container**](CaseInstancesCaseManagementApi.md#get_case_instances_by_container) | **GET** /server/containers/{id}/cases/instances | Retrieves case instances for given container only, allows to filter by case instance status and applies pagination
[**get_case_instances_by_definition**](CaseInstancesCaseManagementApi.md#get_case_instances_by_definition) | **GET** /server/containers/{id}/cases/{caseDefId}/instances | Retrieves case instances for given case definition only, allows to filter by case instance status and applies pagination
[**put_case_instance_data**](CaseInstancesCaseManagementApi.md#put_case_instance_data) | **POST** /server/containers/{id}/cases/instances/{caseId}/caseFile | Puts new data (map of variables) into case instance&#39;s case file
[**put_case_instance_data_by_name**](CaseInstancesCaseManagementApi.md#put_case_instance_data_by_name) | **POST** /server/containers/{id}/cases/instances/{caseId}/caseFile/{dataId} | Puts new data (single data identified by name) into case instance&#39;s case file
[**remove_comment**](CaseInstancesCaseManagementApi.md#remove_comment) | **DELETE** /server/containers/{id}/cases/instances/{caseId}/comments/{caseCommentId} | Removes given comment from case instance
[**remove_role_assignment**](CaseInstancesCaseManagementApi.md#remove_role_assignment) | **DELETE** /server/containers/{id}/cases/instances/{caseId}/roles/{caseRoleName} | Removes role assignment from user or group for given case instance
[**reopen_case**](CaseInstancesCaseManagementApi.md#reopen_case) | **PUT** /server/containers/{id}/cases/{caseDefId}/instances/{caseId} | Reopens case instance with given identifier (case id) by initiating given case definition
[**start_case**](CaseInstancesCaseManagementApi.md#start_case) | **POST** /server/containers/{id}/cases/{caseDefId}/instances | Starts new case instance of given case definition within given container with optional initial CaseFile (that provides variables and case role assignment)
[**trigger_ad_hoc_node**](CaseInstancesCaseManagementApi.md#trigger_ad_hoc_node) | **PUT** /server/containers/{id}/cases/instances/{caseId}/tasks/{nodeName} | Triggers ad hoc fragment in case instance with optional data
[**trigger_ad_hoc_node_in_stage**](CaseInstancesCaseManagementApi.md#trigger_ad_hoc_node_in_stage) | **PUT** /server/containers/{id}/cases/instances/{caseId}/stages/{caseStageId}/tasks/{nodeName} | Triggers ad hoc fragment in stage within case instance with optional data
[**update_comment**](CaseInstancesCaseManagementApi.md#update_comment) | **PUT** /server/containers/{id}/cases/instances/{caseId}/comments/{caseCommentId} | Updates comment within case instance


# **add_comment**
> add_comment(id, case_id, body, opts)

Adds new comment to given case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

body = "body_example" # String | actual content of the comment to be added as String

opts = { 
  author: "author_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  restricted_to: ["restricted_to_example"] # Array<String> | optional role name(s) that given comment should be restricted to
}

begin
  #Adds new comment to given case instance
  api_instance.add_comment(id, case_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **body** | **String**| actual content of the comment to be added as String | 
 **author** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **restricted_to** | [**Array&lt;String&gt;**](String.md)| optional role name(s) that given comment should be restricted to | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_dynamic_process_to_case**
> add_dynamic_process_to_case(id, case_id, p_id, body)

Adds dynamic subprocess identified by process id to case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

p_id = "p_id_example" # String | process id of the subprocess to be added

body = "body_example" # String | data for dynamic subprocess


begin
  #Adds dynamic subprocess identified by process id to case instance
  api_instance.add_dynamic_process_to_case(id, case_id, p_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_dynamic_process_to_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **p_id** | **String**| process id of the subprocess to be added | 
 **body** | **String**| data for dynamic subprocess | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_dynamic_stage_process_to_case**
> add_dynamic_stage_process_to_case(id, case_id, case_stage_id, p_id, body)

Adds dynamic subprocess identified by process id to stage within case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_stage_id = "case_stage_id_example" # String | identifier of the stage within case instance where dynamic subprocess should be added

p_id = "p_id_example" # String | process id of the subprocess to be added

body = "body_example" # String | data for dynamic subprocess


begin
  #Adds dynamic subprocess identified by process id to stage within case instance
  api_instance.add_dynamic_stage_process_to_case(id, case_id, case_stage_id, p_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_dynamic_stage_process_to_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_stage_id** | **String**| identifier of the stage within case instance where dynamic subprocess should be added | 
 **p_id** | **String**| process id of the subprocess to be added | 
 **body** | **String**| data for dynamic subprocess | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_dynamic_stage_task_to_case**
> add_dynamic_stage_task_to_case(id, case_id, case_stage_id, body)

Adds dynamic task (user or service depending on the payload) to given stage within case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_stage_id = "case_stage_id_example" # String | identifier of the stage within case instance where dynamic task should be added

body = "body_example" # String | data for dynamic task (it represents task specification that drives the selection of the type of task)


begin
  #Adds dynamic task (user or service depending on the payload) to given stage within case instance
  api_instance.add_dynamic_stage_task_to_case(id, case_id, case_stage_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_dynamic_stage_task_to_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_stage_id** | **String**| identifier of the stage within case instance where dynamic task should be added | 
 **body** | **String**| data for dynamic task (it represents task specification that drives the selection of the type of task) | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_dynamic_task_to_case**
> add_dynamic_task_to_case(id, case_id, body)

Adds dynamic task (user or service depending on the payload) to case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

body = "body_example" # String | data for dynamic task (it represents task specification that drives the selection of the type of task)


begin
  #Adds dynamic task (user or service depending on the payload) to case instance
  api_instance.add_dynamic_task_to_case(id, case_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_dynamic_task_to_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **body** | **String**| data for dynamic task (it represents task specification that drives the selection of the type of task) | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_role_assignment**
> add_role_assignment(id, case_id, case_role_name, user, group)

Adds new role assignment for given case, it can be either user or group based assignment



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_role_name = "case_role_name_example" # String | name of the case role the assignment should be set

user = "user_example" # String | user to be aded to case role for given case instance

group = "group_example" # String | group to be aded to case role for given case instance


begin
  #Adds new role assignment for given case, it can be either user or group based assignment
  api_instance.add_role_assignment(id, case_id, case_role_name, user, group)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->add_role_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_role_name** | **String**| name of the case role the assignment should be set | 
 **user** | **String**| user to be aded to case role for given case instance | 
 **group** | **String**| group to be aded to case role for given case instance | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **cancel_case_instance**
> cancel_case_instance(id, case_id, opts)

Cancels case instance with given identifier (case id) and has optional flag to permanently destroy the case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  destroy: false # BOOLEAN | allows to destroy (permanently) case instance as part of the cancel operation, defaults to false
}

begin
  #Cancels case instance with given identifier (case id) and has optional flag to permanently destroy the case instance
  api_instance.cancel_case_instance(id, case_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->cancel_case_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **destroy** | **BOOLEAN**| allows to destroy (permanently) case instance as part of the cancel operation, defaults to false | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **close_case_instance**
> close_case_instance(id, case_id, opts)

Closes case instance with given identifier (case id) optionally with comment



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  body: "body_example" # String | optional comment when closing a case instance as String
}

begin
  #Closes case instance with given identifier (case id) optionally with comment
  api_instance.close_case_instance(id, case_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->close_case_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **body** | **String**| optional comment when closing a case instance as String | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **delete_case_instance_data**
> delete_case_instance_data(id, case_id, data_id)

Removes data items identified by name(s) from case instance's case file



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

data_id = ["data_id_example"] # Array<String> | one or more names of the data items to be removed from case file


begin
  #Removes data items identified by name(s) from case instance's case file
  api_instance.delete_case_instance_data(id, case_id, data_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->delete_case_instance_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **data_id** | [**Array&lt;String&gt;**](String.md)| one or more names of the data items to be removed from case file | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_definitions_by_container**
> CaseDefinitionList get_case_definitions_by_container(id, opts)

Retrieves case definition for given container only, applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that should be used to filter case definitions

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case definition for given container only, applies pagination
  result = api_instance.get_case_definitions_by_container(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_definitions_by_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that should be used to filter case definitions | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**CaseDefinitionList**](CaseDefinitionList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_definitions_by_definition**
> CaseDefinition get_case_definitions_by_definition(id, case_def_id)

Retrieves case definition for given container and case definition id



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

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that should be used to filter case definitions

case_def_id = "case_def_id_example" # String | case definition id that should be loaded


begin
  #Retrieves case definition for given container and case definition id
  result = api_instance.get_case_definitions_by_definition(id, case_def_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_definitions_by_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that should be used to filter case definitions | 
 **case_def_id** | **String**| case definition id that should be loaded | 

### Return type

[**CaseDefinition**](CaseDefinition.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance**
> CaseInstance get_case_instance(id, case_id, opts)

Retrieves active case instance by given identifier (case id) with optionally loading data, roles, milestones and stages



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  with_data: false, # BOOLEAN | optional flag to load data when loading case instance
  with_roles: false, # BOOLEAN | optional flag to load roles when loading case instance
  with_milestones: false, # BOOLEAN | optional flag to load milestones when loading case instance
  with_stages: false # BOOLEAN | optional flag to load stages when loading case instance
}

begin
  #Retrieves active case instance by given identifier (case id) with optionally loading data, roles, milestones and stages
  result = api_instance.get_case_instance(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **with_data** | **BOOLEAN**| optional flag to load data when loading case instance | [optional] [default to false]
 **with_roles** | **BOOLEAN**| optional flag to load roles when loading case instance | [optional] [default to false]
 **with_milestones** | **BOOLEAN**| optional flag to load milestones when loading case instance | [optional] [default to false]
 **with_stages** | **BOOLEAN**| optional flag to load stages when loading case instance | [optional] [default to false]

### Return type

[**CaseInstance**](CaseInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_active_nodes**
> NodeInstanceList get_case_instance_active_nodes(id, case_id, opts)

Retrieves node instances from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  completed: false, # BOOLEAN | optional flag that allows to control which node instances to load - active or completed, defaults to false loading only active ones
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves node instances from case instance
  result = api_instance.get_case_instance_active_nodes(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_active_nodes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **completed** | **BOOLEAN**| optional flag that allows to control which node instances to load - active or completed, defaults to false loading only active ones | [optional] [default to false]
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**NodeInstanceList**](NodeInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_ad_hoc_fragments**
> CaseAdhocFragmentList get_case_instance_ad_hoc_fragments(id, case_id)

Retrieves adhoc fragments from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance


begin
  #Retrieves adhoc fragments from case instance
  result = api_instance.get_case_instance_ad_hoc_fragments(id, case_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_ad_hoc_fragments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 

### Return type

[**CaseAdhocFragmentList**](CaseAdhocFragmentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_comments**
> CaseCommentList get_case_instance_comments(id, case_id, opts)

Retrieves comments from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  sort: "sort_example", # String | optional sort column, no default
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves comments from case instance
  result = api_instance.get_case_instance_comments(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **sort** | **String**| optional sort column, no default | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**CaseCommentList**](CaseCommentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_data**
> Hash&lt;String, Object&gt; get_case_instance_data(id, case_id, opts)

Retrieves case instance data as map where key is the name of data item and value is actual instance of the data item from case file



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  name: ["name_example"] # Array<String> | optional name(s) of the data items to retrieve
}

begin
  #Retrieves case instance data as map where key is the name of data item and value is actual instance of the data item from case file
  result = api_instance.get_case_instance_data(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **name** | [**Array&lt;String&gt;**](String.md)| optional name(s) of the data items to retrieve | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_data_by_name**
> Object get_case_instance_data_by_name(id, case_id, data_id)

Retrieves case instance data by data item name



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

data_id = "data_id_example" # String | name of the data item within case file to retrieve


begin
  #Retrieves case instance data by data item name
  result = api_instance.get_case_instance_data_by_name(id, case_id, data_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_data_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **data_id** | **String**| name of the data item within case file to retrieve | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_milestones**
> CaseMilestoneList get_case_instance_milestones(id, case_id, opts)

Retrieves milestones from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  achieved_only: true, # BOOLEAN | optional flag that allows to control which milestones to load - achieved only or actives ones too, defaults to true
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves milestones from case instance
  result = api_instance.get_case_instance_milestones(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_milestones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **achieved_only** | **BOOLEAN**| optional flag that allows to control which milestones to load - achieved only or actives ones too, defaults to true | [optional] [default to true]
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**CaseMilestoneList**](CaseMilestoneList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_process_instance**
> ProcessInstanceList get_case_instance_process_instance(id, case_id, opts)

Retrieves process instances that compose complete case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  status: [56], # Array<Integer> | optional process instance status (active, completed, aborted) - defaults ot active (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves process instances that compose complete case instance
  result = api_instance.get_case_instance_process_instance(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
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



# **get_case_instance_role_assignments**
> CaseRoleAssignmentList get_case_instance_role_assignments(id, case_id)

Retrieves role assignments from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance


begin
  #Retrieves role assignments from case instance
  result = api_instance.get_case_instance_role_assignments(id, case_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_role_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 

### Return type

[**CaseRoleAssignmentList**](CaseRoleAssignmentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instance_stages**
> CaseStageList get_case_instance_stages(id, case_id, opts)

Retrieves stages from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  active_only: true, # BOOLEAN | optional flag that allows to control which stages to load - active only or completed ones too, defaults to true
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves stages from case instance
  result = api_instance.get_case_instance_stages(id, case_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instance_stages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **active_only** | **BOOLEAN**| optional flag that allows to control which stages to load - active only or completed ones too, defaults to true | [optional] [default to true]
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**CaseStageList**](CaseStageList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_case_instances_by_container**
> CaseInstanceList get_case_instances_by_container(id, opts)

Retrieves case instances for given container only, allows to filter by case instance status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that should be used to filter case instances

opts = { 
  status: ["status_example"], # Array<String> | optional case instance status (open, closed, canceled) - defaults ot open (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instances for given container only, allows to filter by case instance status and applies pagination
  result = api_instance.get_case_instances_by_container(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instances_by_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that should be used to filter case instances | 
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



# **get_case_instances_by_definition**
> CaseInstanceList get_case_instances_by_definition(id, case_def_id, opts)

Retrieves case instances for given case definition only, allows to filter by case instance status and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that should be used to filter case instances

case_def_id = "case_def_id_example" # String | case definition id that should be used to filter case instances

opts = { 
  status: ["status_example"], # Array<String> | optional case instance status (open, closed, canceled) - defaults ot open (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instances for given case definition only, allows to filter by case instance status and applies pagination
  result = api_instance.get_case_instances_by_definition(id, case_def_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->get_case_instances_by_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that should be used to filter case instances | 
 **case_def_id** | **String**| case definition id that should be used to filter case instances | 
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



# **put_case_instance_data**
> put_case_instance_data(id, case_id, body, opts)

Puts new data (map of variables) into case instance's case file



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

body = "body_example" # String | map of data to be placed in case file as Map

opts = { 
  restricted_to: ["restricted_to_example"] # Array<String> | optional role name(s) that given data should be restricted to
}

begin
  #Puts new data (map of variables) into case instance's case file
  api_instance.put_case_instance_data(id, case_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->put_case_instance_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **body** | **String**| map of data to be placed in case file as Map | 
 **restricted_to** | [**Array&lt;String&gt;**](String.md)| optional role name(s) that given data should be restricted to | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **put_case_instance_data_by_name**
> put_case_instance_data_by_name(id, case_id, data_id, body, opts)

Puts new data (single data identified by name) into case instance's case file



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

data_id = "data_id_example" # String | name of the data item to be added to case file

body = "body_example" # String | data to be placed in case file, any type can be provided

opts = { 
  restricted_to: ["restricted_to_example"] # Array<String> | optional role name(s) that given data should be restricted to
}

begin
  #Puts new data (single data identified by name) into case instance's case file
  api_instance.put_case_instance_data_by_name(id, case_id, data_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->put_case_instance_data_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **data_id** | **String**| name of the data item to be added to case file | 
 **body** | **String**| data to be placed in case file, any type can be provided | 
 **restricted_to** | [**Array&lt;String&gt;**](String.md)| optional role name(s) that given data should be restricted to | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_comment**
> remove_comment(id, case_id, case_comment_id)

Removes given comment from case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_comment_id = "case_comment_id_example" # String | identifier of the comment to be removed


begin
  #Removes given comment from case instance
  api_instance.remove_comment(id, case_id, case_comment_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->remove_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_comment_id** | **String**| identifier of the comment to be removed | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **remove_role_assignment**
> remove_role_assignment(id, case_id, case_role_name, user, group)

Removes role assignment from user or group for given case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_role_name = "case_role_name_example" # String | name of the case role the assignment should be removed

user = "user_example" # String | user to be removed from case role for given case instance

group = "group_example" # String | group to be removed from case role for given case instance


begin
  #Removes role assignment from user or group for given case instance
  api_instance.remove_role_assignment(id, case_id, case_role_name, user, group)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->remove_role_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_role_name** | **String**| name of the case role the assignment should be removed | 
 **user** | **String**| user to be removed from case role for given case instance | 
 **group** | **String**| group to be removed from case role for given case instance | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **reopen_case**
> reopen_case(id, case_def_id, case_id, opts)

Reopens case instance with given identifier (case id) by initiating given case definition



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id where the case definition resides

case_def_id = "case_def_id_example" # String | case definition id that new instance should be created from

case_id = "case_id_example" # String | identifier of the case instance

opts = { 
  body: "body_example" # String | optional CaseFile with variables and/or case role assignments
}

begin
  #Reopens case instance with given identifier (case id) by initiating given case definition
  api_instance.reopen_case(id, case_def_id, case_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->reopen_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the case definition resides | 
 **case_def_id** | **String**| case definition id that new instance should be created from | 
 **case_id** | **String**| identifier of the case instance | 
 **body** | **String**| optional CaseFile with variables and/or case role assignments | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **start_case**
> String start_case(id, case_def_id, opts)

Starts new case instance of given case definition within given container with optional initial CaseFile (that provides variables and case role assignment)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id where the case definition resides

case_def_id = "case_def_id_example" # String | case definition id that new instance should be created from

opts = { 
  body: "body_example" # String | optional CaseFile with variables and/or case role assignments
}

begin
  #Starts new case instance of given case definition within given container with optional initial CaseFile (that provides variables and case role assignment)
  result = api_instance.start_case(id, case_def_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->start_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the case definition resides | 
 **case_def_id** | **String**| case definition id that new instance should be created from | 
 **body** | **String**| optional CaseFile with variables and/or case role assignments | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **trigger_ad_hoc_node**
> trigger_ad_hoc_node(id, case_id, node_name, opts)

Triggers ad hoc fragment in case instance with optional data



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

node_name = "node_name_example" # String | name of the adhoc fragment to be triggered

opts = { 
  body: "body_example" # String | optional data to be given when triggering adhoc fragment
}

begin
  #Triggers ad hoc fragment in case instance with optional data
  api_instance.trigger_ad_hoc_node(id, case_id, node_name, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->trigger_ad_hoc_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **node_name** | **String**| name of the adhoc fragment to be triggered | 
 **body** | **String**| optional data to be given when triggering adhoc fragment | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **trigger_ad_hoc_node_in_stage**
> trigger_ad_hoc_node_in_stage(id, case_id, case_stage_id, node_name, opts)

Triggers ad hoc fragment in stage within case instance with optional data



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_stage_id = "case_stage_id_example" # String | identifier of the stage within case instance where adhoc fragment should be triggered

node_name = "node_name_example" # String | name of the adhoc fragment to be triggered

opts = { 
  body: "body_example" # String | optional data to be given when triggering adhoc fragment
}

begin
  #Triggers ad hoc fragment in stage within case instance with optional data
  api_instance.trigger_ad_hoc_node_in_stage(id, case_id, case_stage_id, node_name, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->trigger_ad_hoc_node_in_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_stage_id** | **String**| identifier of the stage within case instance where adhoc fragment should be triggered | 
 **node_name** | **String**| name of the adhoc fragment to be triggered | 
 **body** | **String**| optional data to be given when triggering adhoc fragment | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **update_comment**
> update_comment(id, case_id, case_comment_id, body, opts)

Updates comment within case instance



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::CaseInstancesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of the case instance

case_comment_id = "case_comment_id_example" # String | identifier of the comment to be updated

body = "body_example" # String | actual content of the comment to be updated to as String

opts = { 
  author: "author_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  restricted_to: ["restricted_to_example"] # Array<String> | optional role name(s) that given comment should be restricted to
}

begin
  #Updates comment within case instance
  api_instance.update_comment(id, case_id, case_comment_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling CaseInstancesCaseManagementApi->update_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of the case instance | 
 **case_comment_id** | **String**| identifier of the comment to be updated | 
 **body** | **String**| actual content of the comment to be updated to as String | 
 **author** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **restricted_to** | [**Array&lt;String&gt;**](String.md)| optional role name(s) that given comment should be restricted to | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



