# JBPMAPIClient::AdministrationOfCasesCaseManagementApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_admin_case_instances**](AdministrationOfCasesCaseManagementApi.md#get_admin_case_instances) | **GET** /server/admin/cases/instances | Retrieves case instances without authentication checks and applies pagination
[**migrate_case_instance**](AdministrationOfCasesCaseManagementApi.md#migrate_case_instance) | **PUT** /server/admin/containers/{id}/cases/instances/{caseId} | Migrates case instance to new container and case definition with required process mapping to migrate all process instances belonging to a case instance with optional node mapping


# **get_admin_case_instances**
> CaseInstanceList get_admin_case_instances(opts)

Retrieves case instances without authentication checks and applies pagination



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

api_instance = JBPMAPIClient::AdministrationOfCasesCaseManagementApi.new

opts = { 
  status: ["status_example"], # Array<String> | optional case instance status (open, closed, canceled) - defaults ot open (1) only
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves case instances without authentication checks and applies pagination
  result = api_instance.get_admin_case_instances(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AdministrationOfCasesCaseManagementApi->get_admin_case_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **migrate_case_instance**
> CaseMigrationReportInstance migrate_case_instance(id, case_id, target_container_id, opts)

Migrates case instance to new container and case definition with required process mapping to migrate all process instances belonging to a case instance with optional node mapping



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

api_instance = JBPMAPIClient::AdministrationOfCasesCaseManagementApi.new

id = "id_example" # String | container id that case instance belongs to

case_id = "case_id_example" # String | identifier of case instance to be migrated

target_container_id = "target_container_id_example" # String | container id that new case definition should be migrated to to

opts = { 
  body: "body_example" # String | process and node mapping - unique ids of old definition to new definition given as Map of Maps - ProcessMapping should provide map of process definitions (mandatory), NodeMapping should provide map of node mappings (optional)
}

begin
  #Migrates case instance to new container and case definition with required process mapping to migrate all process instances belonging to a case instance with optional node mapping
  result = api_instance.migrate_case_instance(id, case_id, target_container_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AdministrationOfCasesCaseManagementApi->migrate_case_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that case instance belongs to | 
 **case_id** | **String**| identifier of case instance to be migrated | 
 **target_container_id** | **String**| container id that new case definition should be migrated to to | 
 **body** | **String**| process and node mapping - unique ids of old definition to new definition given as Map of Maps - ProcessMapping should provide map of process definitions (mandatory), NodeMapping should provide map of node mappings (optional) | [optional] 

### Return type

[**CaseMigrationReportInstance**](CaseMigrationReportInstance.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



