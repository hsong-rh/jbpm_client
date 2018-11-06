# JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate**](UserTaskOperationsAndQueriesBPMApi.md#activate) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/activated | Activates task with given id that belongs to given container
[**add_attachment**](UserTaskOperationsAndQueriesBPMApi.md#add_attachment) | **POST** /server/containers/{id}/tasks/{tInstanceId}/attachments | Adds attachment to task with given id that belongs to given container
[**add_comment_by_instance_id**](UserTaskOperationsAndQueriesBPMApi.md#add_comment_by_instance_id) | **POST** /server/containers/{id}/tasks/{tInstanceId}/comments | Adds comment to task with given id that belongs to given container
[**claim**](UserTaskOperationsAndQueriesBPMApi.md#claim) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/claimed | Claims task with given id that belongs to given container
[**complete**](UserTaskOperationsAndQueriesBPMApi.md#complete) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/completed | Completes task with given id that belongs to given container, optionally it can claim and start task when auto-progress is used
[**delegate**](UserTaskOperationsAndQueriesBPMApi.md#delegate) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/delegated | Delegates task with given id that belongs to given container
[**delete_attachment**](UserTaskOperationsAndQueriesBPMApi.md#delete_attachment) | **DELETE** /server/containers/{id}/tasks/{tInstanceId}/attachments/{attachmentId} | Deletes attachment from task with given id that belongs to given container
[**delete_comment**](UserTaskOperationsAndQueriesBPMApi.md#delete_comment) | **DELETE** /server/containers/{id}/tasks/{tInstanceId}/comments/{commentId} | Deletes comment from task with given id that belongs to given container
[**delete_content**](UserTaskOperationsAndQueriesBPMApi.md#delete_content) | **DELETE** /server/containers/{id}/tasks/{tInstanceId}/contents/{contentId} | Deletes content from task with given id that belongs to given container
[**exit**](UserTaskOperationsAndQueriesBPMApi.md#exit) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/exited | Exists task with given id that belongs to given container
[**fail**](UserTaskOperationsAndQueriesBPMApi.md#fail) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/failed | Fails task with given id that belongs to given container
[**forward**](UserTaskOperationsAndQueriesBPMApi.md#forward) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/forwarded | Forwards task with given id that belongs to given container
[**get_attachment_by_id**](UserTaskOperationsAndQueriesBPMApi.md#get_attachment_by_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/attachments/{attachmentId} | Retrieves attachment with given id from task with given id that belongs to given container
[**get_attachment_content_by_id**](UserTaskOperationsAndQueriesBPMApi.md#get_attachment_content_by_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/attachments/{attachmentId}/content | Retrieves attachment&#39;s content with given id from task with given id that belongs to given container
[**get_attachments_by_task_id**](UserTaskOperationsAndQueriesBPMApi.md#get_attachments_by_task_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/attachments | Retrieves attachments from task with given id that belongs to given container
[**get_comment_by_id**](UserTaskOperationsAndQueriesBPMApi.md#get_comment_by_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/comments/{commentId} | Retrieves comment with given id from task with given id that belongs to given container
[**get_comments_by_task_id**](UserTaskOperationsAndQueriesBPMApi.md#get_comments_by_task_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/comments | Retrieves comments from task with given id that belongs to given container
[**get_task**](UserTaskOperationsAndQueriesBPMApi.md#get_task) | **GET** /server/containers/{id}/tasks/{tInstanceId} | Retrieves task with given id that belongs to given container, optionally loads its input, output data and assignments
[**get_task_events_by_container_id**](UserTaskOperationsAndQueriesBPMApi.md#get_task_events_by_container_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/events | Retrieves task events for given task id and applies pagination
[**get_task_input_content_by_task_id**](UserTaskOperationsAndQueriesBPMApi.md#get_task_input_content_by_task_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/contents/input | Retrieves input date from task with given id that belongs to given container
[**get_task_output_content_by_task_id**](UserTaskOperationsAndQueriesBPMApi.md#get_task_output_content_by_task_id) | **GET** /server/containers/{id}/tasks/{tInstanceId}/contents/output | Retrieves output date from task with given id that belongs to given container
[**nominate**](UserTaskOperationsAndQueriesBPMApi.md#nominate) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/nominated | Nominates task with given id that belongs to given container
[**release**](UserTaskOperationsAndQueriesBPMApi.md#release) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/released | Releases task with given id that belongs to given container
[**resume**](UserTaskOperationsAndQueriesBPMApi.md#resume) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/resumed | Resumes task with given id that belongs to given container
[**save_content**](UserTaskOperationsAndQueriesBPMApi.md#save_content) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/contents/output | Saves content on task with given id that belongs to given container
[**set_description**](UserTaskOperationsAndQueriesBPMApi.md#set_description) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/description | Sets description on task with given id that belongs to given container
[**set_expiration_date**](UserTaskOperationsAndQueriesBPMApi.md#set_expiration_date) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/expiration | Sets expiration date on task with given id that belongs to given container
[**set_name**](UserTaskOperationsAndQueriesBPMApi.md#set_name) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/name | Sets name on task with given id that belongs to given container
[**set_priority**](UserTaskOperationsAndQueriesBPMApi.md#set_priority) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/priority | Sets priority on task with given id that belongs to given container
[**set_skipable**](UserTaskOperationsAndQueriesBPMApi.md#set_skipable) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/skipable | Sets skipable flag on task with given id that belongs to given container
[**skip**](UserTaskOperationsAndQueriesBPMApi.md#skip) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/skipped | Skips task with given id that belongs to given container
[**start**](UserTaskOperationsAndQueriesBPMApi.md#start) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/started | Starts task with given id that belongs to given container
[**stop**](UserTaskOperationsAndQueriesBPMApi.md#stop) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/stopped | Stops task with given id that belongs to given container
[**suspend**](UserTaskOperationsAndQueriesBPMApi.md#suspend) | **PUT** /server/containers/{id}/tasks/{tInstanceId}/states/suspended | Suspends task with given id that belongs to given container
[**update**](UserTaskOperationsAndQueriesBPMApi.md#update) | **PUT** /server/containers/{id}/tasks/{tInstanceId} | Updates task with given id that belongs to given container with given task instance details in body, updates name, description, priority, expiration date, form name, input and output variables


# **activate**
> activate(id, t_instance_id, opts)

Activates task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be activated

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Activates task with given id that belongs to given container
  api_instance.activate(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->activate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be activated | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_attachment**
> Integer add_attachment(id, t_instance_id, name, body, opts)

Adds attachment to task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that attachment should be added to

name = "name_example" # String | name of the attachment to be added

body = "body_example" # String | attachment content, any type can be provided

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Adds attachment to task with given id that belongs to given container
  result = api_instance.add_attachment(id, t_instance_id, name, body, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->add_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that attachment should be added to | 
 **name** | **String**| name of the attachment to be added | 
 **body** | **String**| attachment content, any type can be provided | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **add_comment_by_instance_id**
> Integer add_comment_by_instance_id(id, t_instance_id, body)

Adds comment to task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that comment should be added to

body = "body_example" # String | comment data as TaskComment


begin
  #Adds comment to task with given id that belongs to given container
  result = api_instance.add_comment_by_instance_id(id, t_instance_id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->add_comment_by_instance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that comment should be added to | 
 **body** | **String**| comment data as TaskComment | 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **claim**
> claim(id, t_instance_id, opts)

Claims task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be claimed

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Claims task with given id that belongs to given container
  api_instance.claim(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->claim: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be claimed | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **complete**
> complete(id, t_instance_id, opts)

Completes task with given id that belongs to given container, optionally it can claim and start task when auto-progress is used



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be completed

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  auto_progress: true, # BOOLEAN | optional flag that allows to directlu claim and start task (if needed) before completion
  body: "body_example" # String | optional map of output variables
}

begin
  #Completes task with given id that belongs to given container, optionally it can claim and start task when auto-progress is used
  api_instance.complete(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be completed | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **auto_progress** | **BOOLEAN**| optional flag that allows to directlu claim and start task (if needed) before completion | [optional] 
 **body** | **String**| optional map of output variables | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **delegate**
> delegate(id, t_instance_id, target_user, opts)

Delegates task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be delegated

target_user = "target_user_example" # String | user that task should be dalegated to

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Delegates task with given id that belongs to given container
  api_instance.delegate(id, t_instance_id, target_user, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->delegate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be delegated | 
 **target_user** | **String**| user that task should be dalegated to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **delete_attachment**
> delete_attachment(id, t_instance_id, attachment_id)

Deletes attachment from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that attachment belongs to

attachment_id = 789 # Integer | identifier of the attachment to be deleted


begin
  #Deletes attachment from task with given id that belongs to given container
  api_instance.delete_attachment(id, t_instance_id, attachment_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->delete_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that attachment belongs to | 
 **attachment_id** | **Integer**| identifier of the attachment to be deleted | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **delete_comment**
> delete_comment(id, t_instance_id, comment_id)

Deletes comment from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that comment belongs to

comment_id = 789 # Integer | identifier of the comment to be deleted


begin
  #Deletes comment from task with given id that belongs to given container
  api_instance.delete_comment(id, t_instance_id, comment_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->delete_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that comment belongs to | 
 **comment_id** | **Integer**| identifier of the comment to be deleted | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **delete_content**
> delete_content(id, t_instance_id, content_id)

Deletes content from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that content belongs to

content_id = 789 # Integer | identifier of the content to be deleted


begin
  #Deletes content from task with given id that belongs to given container
  api_instance.delete_content(id, t_instance_id, content_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->delete_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that content belongs to | 
 **content_id** | **Integer**| identifier of the content to be deleted | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **exit**
> exit(id, t_instance_id, opts)

Exists task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be exited

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Exists task with given id that belongs to given container
  api_instance.exit(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->exit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be exited | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **fail**
> fail(id, t_instance_id, opts)

Fails task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be failed

opts = { 
  user: "user_example", # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
  body: "body_example" # String | optional map of output variables
}

begin
  #Fails task with given id that belongs to given container
  api_instance.fail(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->fail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be failed | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 
 **body** | **String**| optional map of output variables | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **forward**
> forward(id, t_instance_id, target_user, opts)

Forwards task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be forwarded

target_user = "target_user_example" # String | user that the task should be forwarded to

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Forwards task with given id that belongs to given container
  api_instance.forward(id, t_instance_id, target_user, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->forward: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be forwarded | 
 **target_user** | **String**| user that the task should be forwarded to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_attachment_by_id**
> TaskAttachment get_attachment_by_id(id, t_instance_id, attachment_id)

Retrieves attachment with given id from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that attachment belongs to

attachment_id = 789 # Integer | identifier of the attachment to be loaded


begin
  #Retrieves attachment with given id from task with given id that belongs to given container
  result = api_instance.get_attachment_by_id(id, t_instance_id, attachment_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_attachment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that attachment belongs to | 
 **attachment_id** | **Integer**| identifier of the attachment to be loaded | 

### Return type

[**TaskAttachment**](TaskAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_attachment_content_by_id**
> Object get_attachment_content_by_id(id, t_instance_id, attachment_id)

Retrieves attachment's content with given id from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that attachment belongs to

attachment_id = 789 # Integer | identifier of the attachment that content should be loaded from


begin
  #Retrieves attachment's content with given id from task with given id that belongs to given container
  result = api_instance.get_attachment_content_by_id(id, t_instance_id, attachment_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_attachment_content_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that attachment belongs to | 
 **attachment_id** | **Integer**| identifier of the attachment that content should be loaded from | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_attachments_by_task_id**
> TaskAttachmentList get_attachments_by_task_id(id, t_instance_id)

Retrieves attachments from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that attachments should be loaded for


begin
  #Retrieves attachments from task with given id that belongs to given container
  result = api_instance.get_attachments_by_task_id(id, t_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_attachments_by_task_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that attachments should be loaded for | 

### Return type

[**TaskAttachmentList**](TaskAttachmentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_comment_by_id**
> TaskComment get_comment_by_id(id, t_instance_id, comment_id)

Retrieves comment with given id from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that comment belongs to

comment_id = 789 # Integer | identifier of the comment to be loaded


begin
  #Retrieves comment with given id from task with given id that belongs to given container
  result = api_instance.get_comment_by_id(id, t_instance_id, comment_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_comment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that comment belongs to | 
 **comment_id** | **Integer**| identifier of the comment to be loaded | 

### Return type

[**TaskComment**](TaskComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_comments_by_task_id**
> TaskCommentList get_comments_by_task_id(id, t_instance_id)

Retrieves comments from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that comments should be loaded for


begin
  #Retrieves comments from task with given id that belongs to given container
  result = api_instance.get_comments_by_task_id(id, t_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_comments_by_task_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that comments should be loaded for | 

### Return type

[**TaskCommentList**](TaskCommentList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task**
> TaskInstance get_task(id, t_instance_id, opts)

Retrieves task with given id that belongs to given container, optionally loads its input, output data and assignments



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be loaded

opts = { 
  with_input_data: true, # BOOLEAN | optionally loads task input data
  with_output_data: true, # BOOLEAN | optionally loads task output data
  with_assignments: true # BOOLEAN | optionally loads task people assignments
}

begin
  #Retrieves task with given id that belongs to given container, optionally loads its input, output data and assignments
  result = api_instance.get_task(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be loaded | 
 **with_input_data** | **BOOLEAN**| optionally loads task input data | [optional] 
 **with_output_data** | **BOOLEAN**| optionally loads task output data | [optional] 
 **with_assignments** | **BOOLEAN**| optionally loads task people assignments | [optional] 

### Return type

[**TaskInstance**](TaskInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_events_by_container_id**
> TaskEventInstanceList get_task_events_by_container_id(id, t_instance_id, opts)

Retrieves task events for given task id and applies pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that events should be loaded for

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10, # Integer | optional pagination - size of the result, defaults to 10
  sort: "sort_example", # String | optional sort column, no default
  sort_order: true # BOOLEAN | optional sort direction (asc, desc) - defaults to asc
}

begin
  #Retrieves task events for given task id and applies pagination
  result = api_instance.get_task_events_by_container_id(id, t_instance_id, opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_task_events_by_container_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that events should be loaded for | 
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]
 **sort** | **String**| optional sort column, no default | [optional] 
 **sort_order** | **BOOLEAN**| optional sort direction (asc, desc) - defaults to asc | [optional] [default to true]

### Return type

[**TaskEventInstanceList**](TaskEventInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_input_content_by_task_id**
> Hash&lt;String, Object&gt; get_task_input_content_by_task_id(id, t_instance_id)

Retrieves input date from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that input data should be loaded from


begin
  #Retrieves input date from task with given id that belongs to given container
  result = api_instance.get_task_input_content_by_task_id(id, t_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_task_input_content_by_task_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that input data should be loaded from | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_task_output_content_by_task_id**
> Hash&lt;String, Object&gt; get_task_output_content_by_task_id(id, t_instance_id)

Retrieves output date from task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that output data should be loaded from


begin
  #Retrieves output date from task with given id that belongs to given container
  result = api_instance.get_task_output_content_by_task_id(id, t_instance_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->get_task_output_content_by_task_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that output data should be loaded from | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **nominate**
> nominate(id, t_instance_id, pot_owner, opts)

Nominates task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be nominated

pot_owner = ["pot_owner_example"] # Array<String> | list of users that the task should be nominated to

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Nominates task with given id that belongs to given container
  api_instance.nominate(id, t_instance_id, pot_owner, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->nominate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be nominated | 
 **pot_owner** | [**Array&lt;String&gt;**](String.md)| list of users that the task should be nominated to | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **release**
> release(id, t_instance_id, opts)

Releases task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be released

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Releases task with given id that belongs to given container
  api_instance.release(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->release: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be released | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **resume**
> resume(id, t_instance_id, opts)

Resumes task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be resumed

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Resumes task with given id that belongs to given container
  api_instance.resume(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->resume: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be resumed | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **save_content**
> save_content(id, t_instance_id, body)

Saves content on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that data should be saved into

body = "body_example" # String | output data to be saved as Map 


begin
  #Saves content on task with given id that belongs to given container
  api_instance.save_content(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->save_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that data should be saved into | 
 **body** | **String**| output data to be saved as Map  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_description**
> set_description(id, t_instance_id, body)

Sets description on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance where description should be updated

body = "body_example" # String | description as String


begin
  #Sets description on task with given id that belongs to given container
  api_instance.set_description(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->set_description: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance where description should be updated | 
 **body** | **String**| description as String | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_expiration_date**
> set_expiration_date(id, t_instance_id, body)

Sets expiration date on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance where expiration date should be updated

body = "body_example" # String | expiration date as Date


begin
  #Sets expiration date on task with given id that belongs to given container
  api_instance.set_expiration_date(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->set_expiration_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance where expiration date should be updated | 
 **body** | **String**| expiration date as Date | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_name**
> set_name(id, t_instance_id, body)

Sets name on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance where name should be updated

body = "body_example" # String | name as String


begin
  #Sets name on task with given id that belongs to given container
  api_instance.set_name(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->set_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance where name should be updated | 
 **body** | **String**| name as String | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_priority**
> set_priority(id, t_instance_id, body)

Sets priority on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance where priority should be updated

body = "body_example" # String | priority as Integer


begin
  #Sets priority on task with given id that belongs to given container
  api_instance.set_priority(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->set_priority: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance where priority should be updated | 
 **body** | **String**| priority as Integer | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **set_skipable**
> set_skipable(id, t_instance_id, body)

Sets skipable flag on task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance where skipable flag should be updated

body = "body_example" # String | skipable flag as Boolean


begin
  #Sets skipable flag on task with given id that belongs to given container
  api_instance.set_skipable(id, t_instance_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->set_skipable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance where skipable flag should be updated | 
 **body** | **String**| skipable flag as Boolean | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **skip**
> skip(id, t_instance_id, opts)

Skips task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be skipped

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Skips task with given id that belongs to given container
  api_instance.skip(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->skip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be skipped | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **start**
> start(id, t_instance_id, opts)

Starts task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be started

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Starts task with given id that belongs to given container
  api_instance.start(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be started | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **stop**
> stop(id, t_instance_id, opts)

Stops task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be stopped

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Stops task with given id that belongs to given container
  api_instance.stop(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be stopped | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **suspend**
> suspend(id, t_instance_id, opts)

Suspends task with given id that belongs to given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be suspended

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Suspends task with given id that belongs to given container
  api_instance.suspend(id, t_instance_id, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->suspend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be suspended | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **update**
> update(id, t_instance_id, body, opts)

Updates task with given id that belongs to given container with given task instance details in body, updates name, description, priority, expiration date, form name, input and output variables



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::UserTaskOperationsAndQueriesBPMApi.new

id = "id_example" # String | container id that task instance belongs to

t_instance_id = 789 # Integer | identifier of the task instance that should be updated

body = "body_example" # String | task instance with updates as TaskInstance type

opts = { 
  user: "user_example" # String | optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled
}

begin
  #Updates task with given id that belongs to given container with given task instance details in body, updates name, description, priority, expiration date, form name, input and output variables
  api_instance.update(id, t_instance_id, body, opts)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling UserTaskOperationsAndQueriesBPMApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id that task instance belongs to | 
 **t_instance_id** | **Integer**| identifier of the task instance that should be updated | 
 **body** | **String**| task instance with updates as TaskInstance type | 
 **user** | **String**| optional user id to be used instead of authenticated user - only when bypass authenticated user is enabled | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



