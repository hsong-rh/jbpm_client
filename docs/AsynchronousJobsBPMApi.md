# JBPMAPIClient::AsynchronousJobsBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_request**](AsynchronousJobsBPMApi.md#cancel_request) | **DELETE** /server/jobs/{jobId} | Cancels active asynchronous job identified by given jobId
[**get_request_by_id**](AsynchronousJobsBPMApi.md#get_request_by_id) | **GET** /server/jobs/{jobId} | Retrieves asynchronous job by given jobId
[**get_requests_by_business_key**](AsynchronousJobsBPMApi.md#get_requests_by_business_key) | **GET** /server/jobs/keys/{key} | Retrieves asynchronous jobs by business key
[**get_requests_by_command**](AsynchronousJobsBPMApi.md#get_requests_by_command) | **GET** /server/jobs/commands/{cmd} | Retrieves asynchronous jobs by command
[**get_requests_by_container**](AsynchronousJobsBPMApi.md#get_requests_by_container) | **GET** /server/jobs/containers/{id} | Retrieves asynchronous jobs by container
[**get_requests_by_process_instance**](AsynchronousJobsBPMApi.md#get_requests_by_process_instance) | **GET** /server/jobs/processes/instances/{pInstanceId} | Retrieves asynchronous jobs by process instance id
[**get_requests_by_status**](AsynchronousJobsBPMApi.md#get_requests_by_status) | **GET** /server/jobs | Retrieves asynchronous jobs filtered by status
[**requeue_request**](AsynchronousJobsBPMApi.md#requeue_request) | **PUT** /server/jobs/{jobId} | Requeues failed asynchronous job identified by given jobId
[**schedule_request**](AsynchronousJobsBPMApi.md#schedule_request) | **POST** /server/jobs | Schedules new asynchronous job based on given body
[**update_request_data**](AsynchronousJobsBPMApi.md#update_request_data) | **POST** /server/jobs/{jobId}/data | Updates active asynchronous job&#39;s data (identified by given jobId)


# **cancel_request**
> cancel_request(job_id)

Cancels active asynchronous job identified by given jobId



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

job_id = 789 # Integer | identifier of the asynchronous job to be canceled


begin
  #Cancels active asynchronous job identified by given jobId
  api_instance.cancel_request(job_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->cancel_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **Integer**| identifier of the asynchronous job to be canceled | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_request_by_id**
> RequestInfoInstance get_request_by_id(job_id, opts)

Retrieves asynchronous job by given jobId



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

job_id = 789 # Integer | identifier of the asynchronous job to be retrieved

opts = { 
  with_errors: true, # BOOLEAN | optional flag that indicats if errors should be loaded as well
  with_data: true # BOOLEAN | optional flag that indicats if input/output data should be loaded as well
}

begin
  #Retrieves asynchronous job by given jobId
  result = api_instance.get_request_by_id(job_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_request_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **Integer**| identifier of the asynchronous job to be retrieved | 
 **with_errors** | **BOOLEAN**| optional flag that indicats if errors should be loaded as well | [optional] 
 **with_data** | **BOOLEAN**| optional flag that indicats if input/output data should be loaded as well | [optional] 

### Return type

[**RequestInfoInstance**](RequestInfoInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_requests_by_business_key**
> RequestInfoInstanceList get_requests_by_business_key(key, opts)

Retrieves asynchronous jobs by business key



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

key = "key_example" # String | identifier of the business key that asynchornous jobs should be found for

opts = { 
  status: ["status_example"], # Array<String> | optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves asynchronous jobs by business key
  result = api_instance.get_requests_by_business_key(key, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_requests_by_business_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| identifier of the business key that asynchornous jobs should be found for | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**RequestInfoInstanceList**](RequestInfoInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_requests_by_command**
> RequestInfoInstanceList get_requests_by_command(cmd, opts)

Retrieves asynchronous jobs by command



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

cmd = "cmd_example" # String | name of the command that asynchornous jobs should be found for

opts = { 
  status: ["status_example"], # Array<String> | optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves asynchronous jobs by command
  result = api_instance.get_requests_by_command(cmd, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_requests_by_command: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmd** | **String**| name of the command that asynchornous jobs should be found for | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**RequestInfoInstanceList**](RequestInfoInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_requests_by_container**
> RequestInfoInstanceList get_requests_by_container(id, opts)

Retrieves asynchronous jobs by container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

id = "id_example" # String | identifier of the container that asynchornous jobs should be found for

opts = { 
  status: ["status_example"], # Array<String> | optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves asynchronous jobs by container
  result = api_instance.get_requests_by_container(id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_requests_by_container: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| identifier of the container that asynchornous jobs should be found for | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**RequestInfoInstanceList**](RequestInfoInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_requests_by_process_instance**
> RequestInfoInstanceList get_requests_by_process_instance(p_instance_id, opts)

Retrieves asynchronous jobs by process instance id



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

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

p_instance_id = 789 # Integer | identifier of the process instance that asynchornous jobs should be found for

opts = { 
  status: ["status_example"], # Array<String> | optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING)
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves asynchronous jobs by process instance id
  result = api_instance.get_requests_by_process_instance(p_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_requests_by_process_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p_instance_id** | **Integer**| identifier of the process instance that asynchornous jobs should be found for | 
 **status** | [**Array&lt;String&gt;**](String.md)| optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING) | [optional] 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**RequestInfoInstanceList**](RequestInfoInstanceList.md)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_requests_by_status**
> RequestInfoInstanceList get_requests_by_status(status, opts)

Retrieves asynchronous jobs filtered by status



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

status = ["status_example"] # Array<String> | optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING)

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves asynchronous jobs filtered by status
  result = api_instance.get_requests_by_status(status, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->get_requests_by_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**Array&lt;String&gt;**](String.md)| optional job status (QUEUED, DONE, CANCELLED, ERROR, RETRYING, RUNNING) | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**RequestInfoInstanceList**](RequestInfoInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **requeue_request**
> requeue_request(job_id)

Requeues failed asynchronous job identified by given jobId



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

job_id = 789 # Integer | identifier of the asynchronous job to be requeued


begin
  #Requeues failed asynchronous job identified by given jobId
  api_instance.requeue_request(job_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->requeue_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **Integer**| identifier of the asynchronous job to be requeued | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **schedule_request**
> Integer schedule_request(body, opts)

Schedules new asynchronous job based on given body



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

body = "body_example" # String | asynchronous job definition represented as JobRequestInstance

opts = { 
  container_id: "container_id_example" # String | optional container id that the job should be associated with
}

begin
  #Schedules new asynchronous job based on given body
  result = api_instance.schedule_request(body, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->schedule_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| asynchronous job definition represented as JobRequestInstance | 
 **container_id** | **String**| optional container id that the job should be associated with | [optional] 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **update_request_data**
> update_request_data(job_id, body, opts)

Updates active asynchronous job's data (identified by given jobId)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::AsynchronousJobsBPMApi.new

job_id = 789 # Integer | identifier of the asynchronous job to be updated

body = "body_example" # String | data to be updated on the asynchronous job represented as Map

opts = { 
  container_id: "container_id_example" # String | optional container id that the job should be associated with
}

begin
  #Updates active asynchronous job's data (identified by given jobId)
  api_instance.update_request_data(job_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling AsynchronousJobsBPMApi->update_request_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **Integer**| identifier of the asynchronous job to be updated | 
 **body** | **String**| data to be updated on the asynchronous job represented as Map | 
 **container_id** | **String**| optional container id that the job should be associated with | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



