# JBPMAPIClient::DocumentsBPMApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_document**](DocumentsBPMApi.md#create_document) | **POST** /server/documents | Creates new document based on given content (body)
[**delete_document**](DocumentsBPMApi.md#delete_document) | **DELETE** /server/documents/{documentId} | Deletes document identified by given document id
[**get_document**](DocumentsBPMApi.md#get_document) | **GET** /server/documents/{documentId} | Retrieves document identified by given documentId
[**get_document_content**](DocumentsBPMApi.md#get_document_content) | **GET** /server/documents/{documentId}/content | Retrieves document&#39;s content identified by given documentId
[**list_documents**](DocumentsBPMApi.md#list_documents) | **GET** /server/documents | Retrieves documents that are stored in the system, with pagination
[**update_document**](DocumentsBPMApi.md#update_document) | **PUT** /server/documents/{documentId} | Updates document identified by given document id based on given content (body)


# **create_document**
> String create_document(body)

Creates new document based on given content (body)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DocumentsBPMApi.new

body = "body_example" # String | document content represented as DocumentInstance


begin
  #Creates new document based on given content (body)
  result = api_instance.create_document(body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->create_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| document content represented as DocumentInstance | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **delete_document**
> delete_document(document_id)

Deletes document identified by given document id



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

api_instance = JBPMAPIClient::DocumentsBPMApi.new

document_id = "document_id_example" # String | document id of a document that should be deleted


begin
  #Deletes document identified by given document id
  api_instance.delete_document(document_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->delete_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| document id of a document that should be deleted | 

### Return type

nil (empty response body)

### Authorization

[jbpm_auth](../README.md#jbpm_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_document**
> DocumentInstance get_document(document_id)

Retrieves document identified by given documentId



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DocumentsBPMApi.new

document_id = "document_id_example" # String | document id of a document that should be retruned


begin
  #Retrieves document identified by given documentId
  result = api_instance.get_document(document_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| document id of a document that should be retruned | 

### Return type

[**DocumentInstance**](DocumentInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_document_content**
> Array&lt;String&gt; get_document_content(document_id)

Retrieves document's content identified by given documentId



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DocumentsBPMApi.new

document_id = "document_id_example" # String | document id of a document that content should be retruned from


begin
  #Retrieves document's content identified by given documentId
  result = api_instance.get_document_content(document_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->get_document_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| document id of a document that content should be retruned from | 

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **list_documents**
> DocumentInstanceList list_documents(opts)

Retrieves documents that are stored in the system, with pagination



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DocumentsBPMApi.new

opts = { 
  page: 0, # Integer | optional pagination - at which page to start, defaults to 0 (meaning first)
  page_size: 10 # Integer | optional pagination - size of the result, defaults to 10
}

begin
  #Retrieves documents that are stored in the system, with pagination
  result = api_instance.list_documents(opts)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->list_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| optional pagination - at which page to start, defaults to 0 (meaning first) | [optional] [default to 0]
 **page_size** | **Integer**| optional pagination - size of the result, defaults to 10 | [optional] [default to 10]

### Return type

[**DocumentInstanceList**](DocumentInstanceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **update_document**
> update_document(document_id, body)

Updates document identified by given document id based on given content (body)



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::DocumentsBPMApi.new

document_id = "document_id_example" # String | document id of a document that should be updated

body = "body_example" # String | document content represented as DocumentInstance


begin
  #Updates document identified by given document id based on given content (body)
  api_instance.update_document(document_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling DocumentsBPMApi->update_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| document id of a document that should be updated | 
 **body** | **String**| document content represented as DocumentInstance | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



