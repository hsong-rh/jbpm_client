=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JBPMAPIClient
  class PlanningAndSolversBRPApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Adds problem fact changes to given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param body Problem fact changes, either single one or a list of them
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_problem_fact_changes(id, solver_id, body, opts = {})
      add_problem_fact_changes_with_http_info(id, solver_id, body, opts)
      return nil
    end

    # Adds problem fact changes to given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param body Problem fact changes, either single one or a list of them
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_problem_fact_changes_with_http_info(id, solver_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.add_problem_fact_changes ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.add_problem_fact_changes"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.add_problem_fact_changes"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PlanningAndSolversBRPApi.add_problem_fact_changes"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}/problemfactchanges".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#add_problem_fact_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates solver within given container
    # 
    # @param id container id where the solver config resides
    # @param solver_id identifier of the solver to create
    # @param body solver instance details as SolverInstance type
    # @param [Hash] opts the optional parameters
    # @return [SolverInstance]
    def create_solver(id, solver_id, body, opts = {})
      data, _status_code, _headers = create_solver_with_http_info(id, solver_id, body, opts)
      return data
    end

    # Creates solver within given container
    # 
    # @param id container id where the solver config resides
    # @param solver_id identifier of the solver to create
    # @param body solver instance details as SolverInstance type
    # @param [Hash] opts the optional parameters
    # @return [Array<(SolverInstance, Fixnum, Hash)>] SolverInstance data, response status code and response headers
    def create_solver_with_http_info(id, solver_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.create_solver ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.create_solver"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.create_solver"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PlanningAndSolversBRPApi.create_solver"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SolverInstance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#create_solver\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disposes given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def dispose_solver(id, solver_id, opts = {})
      dispose_solver_with_http_info(id, solver_id, opts)
      return nil
    end

    # Disposes given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def dispose_solver_with_http_info(id, solver_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.dispose_solver ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.dispose_solver"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.dispose_solver"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#dispose_solver\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves solver by its identifier from given container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [SolverInstance]
    def get_solver(id, solver_id, opts = {})
      data, _status_code, _headers = get_solver_with_http_info(id, solver_id, opts)
      return data
    end

    # Retrieves solver by its identifier from given container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [Array<(SolverInstance, Fixnum, Hash)>] SolverInstance data, response status code and response headers
    def get_solver_with_http_info(id, solver_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.get_solver ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.get_solver"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.get_solver"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SolverInstance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#get_solver\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves best solution from solver within container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [SolverInstance]
    def get_solver_with_best_solution(id, solver_id, opts = {})
      data, _status_code, _headers = get_solver_with_best_solution_with_http_info(id, solver_id, opts)
      return data
    end

    # Retrieves best solution from solver within container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [Array<(SolverInstance, Fixnum, Hash)>] SolverInstance data, response status code and response headers
    def get_solver_with_best_solution_with_http_info(id, solver_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.get_solver_with_best_solution ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.get_solver_with_best_solution"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.get_solver_with_best_solution"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}/bestsolution".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SolverInstance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#get_solver_with_best_solution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves solvers from given container
    # 
    # @param id container id where the solvers reside
    # @param [Hash] opts the optional parameters
    # @return [Solvers]
    def get_solvers(id, opts = {})
      data, _status_code, _headers = get_solvers_with_http_info(id, opts)
      return data
    end

    # Retrieves solvers from given container
    # 
    # @param id container id where the solvers reside
    # @param [Hash] opts the optional parameters
    # @return [Array<(Solvers, Fixnum, Hash)>] Solvers data, response status code and response headers
    def get_solvers_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.get_solvers ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.get_solvers"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Solvers')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#get_solvers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves status if problem fact changes have been processed in given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [BOOLEAN]
    def is_every_problem_fact_change_processed(id, solver_id, opts = {})
      data, _status_code, _headers = is_every_problem_fact_change_processed_with_http_info(id, solver_id, opts)
      return data
    end

    # Retrieves status if problem fact changes have been processed in given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [Array<(BOOLEAN, Fixnum, Hash)>] BOOLEAN data, response status code and response headers
    def is_every_problem_fact_change_processed_with_http_info(id, solver_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.is_every_problem_fact_change_processed ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.is_every_problem_fact_change_processed"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.is_every_problem_fact_change_processed"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}/problemfactchanges/processed".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BOOLEAN')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#is_every_problem_fact_change_processed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Solves given planning problem with given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param body planning problem
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def solve_planning_problem(id, solver_id, body, opts = {})
      solve_planning_problem_with_http_info(id, solver_id, body, opts)
      return nil
    end

    # Solves given planning problem with given solver
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param body planning problem
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def solve_planning_problem_with_http_info(id, solver_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.solve_planning_problem ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.solve_planning_problem"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.solve_planning_problem"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PlanningAndSolversBRPApi.solve_planning_problem"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}/state/solving".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#solve_planning_problem\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminates early running solver with given id within container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate_solver_early(id, solver_id, opts = {})
      terminate_solver_early_with_http_info(id, solver_id, opts)
      return nil
    end

    # Terminates early running solver with given id within container
    # 
    # @param id container id where the solver resides
    # @param solver_id identifier of the solver
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def terminate_solver_early_with_http_info(id, solver_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanningAndSolversBRPApi.terminate_solver_early ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlanningAndSolversBRPApi.terminate_solver_early"
      end
      # verify the required parameter 'solver_id' is set
      if @api_client.config.client_side_validation && solver_id.nil?
        fail ArgumentError, "Missing the required parameter 'solver_id' when calling PlanningAndSolversBRPApi.terminate_solver_early"
      end
      # resource path
      local_var_path = "/server/containers/{id}/solvers/{solverId}/state/terminating-early".sub('{' + 'id' + '}', id.to_s).sub('{' + 'solverId' + '}', solver_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanningAndSolversBRPApi#terminate_solver_early\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
