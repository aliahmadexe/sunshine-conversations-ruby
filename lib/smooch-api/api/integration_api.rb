=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class IntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create an integration for the specified app.
    # @param appId Identifies the app.
    # @param integrationCreateBody Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def create_integration(appId, integrationCreateBody, opts = {})
      data, _status_code, _headers = create_integration_with_http_info(appId, integrationCreateBody, opts)
      return data
    end

    # 
    # Create an integration for the specified app.
    # @param appId Identifies the app.
    # @param integrationCreateBody Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def create_integration_with_http_info(appId, integrationCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.create_integration ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.create_integration"
      end
      # verify the required parameter 'integrationCreateBody' is set
      if @api_client.config.client_side_validation && integrationCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'integrationCreateBody' when calling IntegrationApi.create_integration"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(integrationCreateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#create_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create the specified integration’s menu, overriding the app menu if configured.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param menuCreateBody Body for a createMenu request.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def create_integration_menu(appId, integrationId, menuCreateBody, opts = {})
      data, _status_code, _headers = create_integration_menu_with_http_info(appId, integrationId, menuCreateBody, opts)
      return data
    end

    # 
    # Create the specified integration’s menu, overriding the app menu if configured.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param menuCreateBody Body for a createMenu request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def create_integration_menu_with_http_info(appId, integrationId, menuCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.create_integration_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.create_integration_menu"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.create_integration_menu"
      end
      # verify the required parameter 'menuCreateBody' is set
      if @api_client.config.client_side_validation && menuCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'menuCreateBody' when calling IntegrationApi.create_integration_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(menuCreateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#create_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration(appId, integrationId, opts = {})
      delete_integration_with_http_info(appId, integrationId, opts)
      return nil
    end

    # 
    # Delete the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_with_http_info(appId, integrationId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.delete_integration ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.delete_integration"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.delete_integration"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#delete_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified integration’s menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration_menu(appId, integrationId, opts = {})
      delete_integration_menu_with_http_info(appId, integrationId, opts)
      return nil
    end

    # 
    # Delete the specified integration’s menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_menu_with_http_info(appId, integrationId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.delete_integration_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.delete_integration_menu"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.delete_integration_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#delete_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def get_integration(appId, integrationId, opts = {})
      data, _status_code, _headers = get_integration_with_http_info(appId, integrationId, opts)
      return data
    end

    # 
    # Get the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def get_integration_with_http_info(appId, integrationId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.get_integration ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.get_integration"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.get_integration"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#get_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified integration's menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def get_integration_menu(appId, integrationId, opts = {})
      data, _status_code, _headers = get_integration_menu_with_http_info(appId, integrationId, opts)
      return data
    end

    # 
    # Get the specified integration&#39;s menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def get_integration_menu_with_http_info(appId, integrationId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.get_integration_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.get_integration_menu"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.get_integration_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#get_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [GetIntegrationProfileResponse]
    def get_integration_profile(appId, integrationId, opts = {})
      data, _status_code, _headers = get_integration_profile_with_http_info(appId, integrationId, opts)
      return data
    end

    # 
    # Get the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIntegrationProfileResponse, Fixnum, Hash)>] GetIntegrationProfileResponse data, response status code and response headers
    def get_integration_profile_with_http_info(appId, integrationId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.get_integration_profile ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.get_integration_profile"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.get_integration_profile"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/profile".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetIntegrationProfileResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#get_integration_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List integrations for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*. 
    # @option opts [Integer] :limit The number of records to return. (default to 25)
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return. (default to 0)
    # @return [ListIntegrationsResponse]
    def list_integrations(appId, opts = {})
      data, _status_code, _headers = list_integrations_with_http_info(appId, opts)
      return data
    end

    # 
    # List integrations for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*. 
    # @option opts [Integer] :limit The number of records to return.
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return.
    # @return [Array<(ListIntegrationsResponse, Fixnum, Hash)>] ListIntegrationsResponse data, response status code and response headers
    def list_integrations_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.list_integrations ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.list_integrations"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}
      query_params[:'types'] = opts[:'types'] if !opts[:'types'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListIntegrationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#list_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param integrationUpdateBody Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#update-integration) 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def update_integration(appId, integrationId, integrationUpdateBody, opts = {})
      data, _status_code, _headers = update_integration_with_http_info(appId, integrationId, integrationUpdateBody, opts)
      return data
    end

    # 
    # Update the specified integration.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param integrationUpdateBody Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#update-integration) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def update_integration_with_http_info(appId, integrationId, integrationUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.update_integration ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.update_integration"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.update_integration"
      end
      # verify the required parameter 'integrationUpdateBody' is set
      if @api_client.config.client_side_validation && integrationUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'integrationUpdateBody' when calling IntegrationApi.update_integration"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(integrationUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#update_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified integration’s menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param menuUpdateBody Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def update_integration_menu(appId, integrationId, menuUpdateBody, opts = {})
      data, _status_code, _headers = update_integration_menu_with_http_info(appId, integrationId, menuUpdateBody, opts)
      return data
    end

    # 
    # Update the specified integration’s menu.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param menuUpdateBody Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def update_integration_menu_with_http_info(appId, integrationId, menuUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.update_integration_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.update_integration_menu"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.update_integration_menu"
      end
      # verify the required parameter 'menuUpdateBody' is set
      if @api_client.config.client_side_validation && menuUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'menuUpdateBody' when calling IntegrationApi.update_integration_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(menuUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#update_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param integrationProfileBody Body for a profileUpdate request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_integration_profile(appId, integrationId, integrationProfileBody, opts = {})
      update_integration_profile_with_http_info(appId, integrationId, integrationProfileBody, opts)
      return nil
    end

    # 
    # Update the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param integrationProfileBody Body for a profileUpdate request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_integration_profile_with_http_info(appId, integrationId, integrationProfileBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.update_integration_profile ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.update_integration_profile"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.update_integration_profile"
      end
      # verify the required parameter 'integrationProfileBody' is set
      if @api_client.config.client_side_validation && integrationProfileBody.nil?
        fail ArgumentError, "Missing the required parameter 'integrationProfileBody' when calling IntegrationApi.update_integration_profile"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/profile".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(integrationProfileBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#update_integration_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Upload a photo to be used for the the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param source Photo to be uploaded
    # @param [Hash] opts the optional parameters
    # @return [UploadIntegrationProfilePhotoResponse]
    def upload_integration_profile_photo(appId, integrationId, source, opts = {})
      data, _status_code, _headers = upload_integration_profile_photo_with_http_info(appId, integrationId, source, opts)
      return data
    end

    # 
    # Upload a photo to be used for the the specified integration’s profile.
    # @param appId Identifies the app.
    # @param integrationId Identifies the integration.
    # @param source Photo to be uploaded
    # @param [Hash] opts the optional parameters
    # @return [Array<(UploadIntegrationProfilePhotoResponse, Fixnum, Hash)>] UploadIntegrationProfilePhotoResponse data, response status code and response headers
    def upload_integration_profile_photo_with_http_info(appId, integrationId, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.upload_integration_profile_photo ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling IntegrationApi.upload_integration_profile_photo"
      end
      # verify the required parameter 'integrationId' is set
      if @api_client.config.client_side_validation && integrationId.nil?
        fail ArgumentError, "Missing the required parameter 'integrationId' when calling IntegrationApi.upload_integration_profile_photo"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling IntegrationApi.upload_integration_profile_photo"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/integrations/{integrationId}/profile/photo".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'integrationId' + '}', integrationId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["source"] = source

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UploadIntegrationProfilePhotoResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#upload_integration_profile_photo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
