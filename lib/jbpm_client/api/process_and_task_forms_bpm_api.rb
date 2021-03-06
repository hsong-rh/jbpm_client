=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JBPMAPIClient
  class ProcessAndTaskFormsBPMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieves form for process definition within a container
    # 
    # @param id container id that process definition belongs to
    # @param p_id identifier of process definition that form should be fetched for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lang optional language that the form should be found for (default to en)
    # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
    # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one (default to ANY)
    # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true (default to true)
    # @return [String]
    def get_process_form(id, p_id, opts = {})
      data, _status_code, _headers = get_process_form_with_http_info(id, p_id, opts)
      return data
    end

    # Retrieves form for process definition within a container
    # 
    # @param id container id that process definition belongs to
    # @param p_id identifier of process definition that form should be fetched for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lang optional language that the form should be found for
    # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
    # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one
    # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_process_form_with_http_info(id, p_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProcessAndTaskFormsBPMApi.get_process_form ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProcessAndTaskFormsBPMApi.get_process_form"
      end
      # verify the required parameter 'p_id' is set
      if @api_client.config.client_side_validation && p_id.nil?
        fail ArgumentError, "Missing the required parameter 'p_id' when calling ProcessAndTaskFormsBPMApi.get_process_form"
      end
      # resource path
      local_var_path = "/server/containers/{id}/forms/processes/{pId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'pId' + '}', p_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'lang'] = opts[:'lang'] if !opts[:'lang'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'marshallContent'] = opts[:'marshall_content'] if !opts[:'marshall_content'].nil?

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcessAndTaskFormsBPMApi#get_process_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves form for task instance within a container
    # 
    # @param id container id that task instance belongs to
    # @param t_instance_id identifier of task instance that form should be fetched for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lang optional language that the form should be found for (default to en)
    # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
    # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one (default to ANY)
    # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true (default to true)
    # @return [String]
    def get_task_form(id, t_instance_id, opts = {})
      data, _status_code, _headers = get_task_form_with_http_info(id, t_instance_id, opts)
      return data
    end

    # Retrieves form for task instance within a container
    # 
    # @param id container id that task instance belongs to
    # @param t_instance_id identifier of task instance that form should be fetched for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lang optional language that the form should be found for
    # @option opts [BOOLEAN] :filter optional filter flag if form should be filtered or returned as is
    # @option opts [String] :type optional type of the form, defaults to ANY so system will find the most current one
    # @option opts [BOOLEAN] :marshall_content optional marshall content flag if the content should be transformed or not, defaults to true
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_task_form_with_http_info(id, t_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProcessAndTaskFormsBPMApi.get_task_form ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProcessAndTaskFormsBPMApi.get_task_form"
      end
      # verify the required parameter 't_instance_id' is set
      if @api_client.config.client_side_validation && t_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 't_instance_id' when calling ProcessAndTaskFormsBPMApi.get_task_form"
      end
      # resource path
      local_var_path = "/server/containers/{id}/forms/tasks/{tInstanceId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'tInstanceId' + '}', t_instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'lang'] = opts[:'lang'] if !opts[:'lang'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'marshallContent'] = opts[:'marshall_content'] if !opts[:'marshall_content'].nil?

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProcessAndTaskFormsBPMApi#get_task_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
