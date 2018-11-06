# JBPMAPIClient::PlanningAndSolversBRPApi

All URIs are relative to *https://localhost/kie-server/services/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_problem_fact_changes**](PlanningAndSolversBRPApi.md#add_problem_fact_changes) | **POST** /server/containers/{id}/solvers/{solverId}/problemfactchanges | Adds problem fact changes to given solver
[**create_solver**](PlanningAndSolversBRPApi.md#create_solver) | **PUT** /server/containers/{id}/solvers/{solverId} | Creates solver within given container
[**dispose_solver**](PlanningAndSolversBRPApi.md#dispose_solver) | **DELETE** /server/containers/{id}/solvers/{solverId} | Disposes given solver
[**get_solver**](PlanningAndSolversBRPApi.md#get_solver) | **GET** /server/containers/{id}/solvers/{solverId} | Retrieves solver by its identifier from given container
[**get_solver_with_best_solution**](PlanningAndSolversBRPApi.md#get_solver_with_best_solution) | **GET** /server/containers/{id}/solvers/{solverId}/bestsolution | Retrieves best solution from solver within container
[**get_solvers**](PlanningAndSolversBRPApi.md#get_solvers) | **GET** /server/containers/{id}/solvers | Retrieves solvers from given container
[**is_every_problem_fact_change_processed**](PlanningAndSolversBRPApi.md#is_every_problem_fact_change_processed) | **GET** /server/containers/{id}/solvers/{solverId}/problemfactchanges/processed | Retrieves status if problem fact changes have been processed in given solver
[**solve_planning_problem**](PlanningAndSolversBRPApi.md#solve_planning_problem) | **POST** /server/containers/{id}/solvers/{solverId}/state/solving | Solves given planning problem with given solver
[**terminate_solver_early**](PlanningAndSolversBRPApi.md#terminate_solver_early) | **POST** /server/containers/{id}/solvers/{solverId}/state/terminating-early | Terminates early running solver with given id within container


# **add_problem_fact_changes**
> add_problem_fact_changes(id, solver_id, body)

Adds problem fact changes to given solver



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver

body = "body_example" # String | Problem fact changes, either single one or a list of them


begin
  #Adds problem fact changes to given solver
  api_instance.add_problem_fact_changes(id, solver_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->add_problem_fact_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 
 **body** | **String**| Problem fact changes, either single one or a list of them | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **create_solver**
> SolverInstance create_solver(id, solver_id, body)

Creates solver within given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver config resides

solver_id = "solver_id_example" # String | identifier of the solver to create

body = "body_example" # String | solver instance details as SolverInstance type


begin
  #Creates solver within given container
  result = api_instance.create_solver(id, solver_id, body)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->create_solver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver config resides | 
 **solver_id** | **String**| identifier of the solver to create | 
 **body** | **String**| solver instance details as SolverInstance type | 

### Return type

[**SolverInstance**](SolverInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json



# **dispose_solver**
> dispose_solver(id, solver_id)

Disposes given solver



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver


begin
  #Disposes given solver
  api_instance.dispose_solver(id, solver_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->dispose_solver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_solver**
> SolverInstance get_solver(id, solver_id)

Retrieves solver by its identifier from given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver


begin
  #Retrieves solver by its identifier from given container
  result = api_instance.get_solver(id, solver_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->get_solver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 

### Return type

[**SolverInstance**](SolverInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_solver_with_best_solution**
> SolverInstance get_solver_with_best_solution(id, solver_id)

Retrieves best solution from solver within container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver


begin
  #Retrieves best solution from solver within container
  result = api_instance.get_solver_with_best_solution(id, solver_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->get_solver_with_best_solution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 

### Return type

[**SolverInstance**](SolverInstance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_solvers**
> Solvers get_solvers(id)

Retrieves solvers from given container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solvers reside


begin
  #Retrieves solvers from given container
  result = api_instance.get_solvers(id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->get_solvers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solvers reside | 

### Return type

[**Solvers**](Solvers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **is_every_problem_fact_change_processed**
> BOOLEAN is_every_problem_fact_change_processed(id, solver_id)

Retrieves status if problem fact changes have been processed in given solver



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver


begin
  #Retrieves status if problem fact changes have been processed in given solver
  result = api_instance.is_every_problem_fact_change_processed(id, solver_id)
  p result
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->is_every_problem_fact_change_processed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 

### Return type

**BOOLEAN**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **solve_planning_problem**
> solve_planning_problem(id, solver_id, body)

Solves given planning problem with given solver



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver

body = "body_example" # String | planning problem


begin
  #Solves given planning problem with given solver
  api_instance.solve_planning_problem(id, solver_id, body)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->solve_planning_problem: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 
 **body** | **String**| planning problem | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **terminate_solver_early**
> terminate_solver_early(id, solver_id)

Terminates early running solver with given id within container



### Example
```ruby
# load the gem
require 'jbpm_client'

api_instance = JBPMAPIClient::PlanningAndSolversBRPApi.new

id = "id_example" # String | container id where the solver resides

solver_id = "solver_id_example" # String | identifier of the solver


begin
  #Terminates early running solver with given id within container
  api_instance.terminate_solver_early(id, solver_id)
rescue JBPMAPIClient::ApiError => e
  puts "Exception when calling PlanningAndSolversBRPApi->terminate_solver_early: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| container id where the solver resides | 
 **solver_id** | **String**| identifier of the solver | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



