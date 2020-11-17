=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AppUserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_app_user(appId, userId, opts = {})
      delete_app_user_with_http_info(appId, userId, opts)
      return nil
    end

    # 
    # Delete specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_app_user_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.delete_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.delete_app_user"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.delete_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        @api_client.config.logger.debug "API called: AppUserApi#delete_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete specified app user's profile.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def delete_app_user_profile(appId, userId, opts = {})
      data, _status_code, _headers = delete_app_user_profile_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Delete specified app user&#39;s profile.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def delete_app_user_profile_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.delete_app_user_profile ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.delete_app_user_profile"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.delete_app_user_profile"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/profile".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#delete_app_user_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def get_app_user(appId, userId, opts = {})
      data, _status_code, _headers = get_app_user_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Get the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def get_app_user_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.get_app_user"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.get_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an auth code for facilitating a channel transfer
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AuthCodeResponse]
    def get_app_user_auth_code(appId, userId, opts = {})
      data, _status_code, _headers = get_app_user_auth_code_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Get an auth code for facilitating a channel transfer
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthCodeResponse, Fixnum, Hash)>] AuthCodeResponse data, response status code and response headers
    def get_app_user_auth_code_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_auth_code ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.get_app_user_auth_code"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.get_app_user_auth_code"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/authcode".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        :return_type => 'AuthCodeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get specified app user's business system IDs.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserBusinessSystemsResponse]
    def get_app_user_business_system_ids(appId, userId, opts = {})
      data, _status_code, _headers = get_app_user_business_system_ids_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Get specified app user&#39;s business system IDs.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserBusinessSystemsResponse, Fixnum, Hash)>] AppUserBusinessSystemsResponse data, response status code and response headers
    def get_app_user_business_system_ids_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_business_system_ids ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.get_app_user_business_system_ids"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.get_app_user_business_system_ids"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/businesssystems".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        :return_type => 'AppUserBusinessSystemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_business_system_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get specified app user's channel entity IDs.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserChannelsResponse]
    def get_app_user_entity_ids(appId, userId, opts = {})
      data, _status_code, _headers = get_app_user_entity_ids_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Get specified app user&#39;s channel entity IDs.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserChannelsResponse, Fixnum, Hash)>] AppUserChannelsResponse data, response status code and response headers
    def get_app_user_entity_ids_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_entity_ids ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.get_app_user_entity_ids"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.get_app_user_entity_ids"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/channels".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
        :return_type => 'AppUserChannelsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_entity_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Fetch link requests for the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param integrationIds List of integration IDs
    # @param [Hash] opts the optional parameters
    # @return [LinkRequestResponse]
    def get_link_requests(appId, userId, integrationIds, opts = {})
      data, _status_code, _headers = get_link_requests_with_http_info(appId, userId, integrationIds, opts)
      return data
    end

    # 
    # Fetch link requests for the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param integrationIds List of integration IDs
    # @param [Hash] opts the optional parameters
    # @return [Array<(LinkRequestResponse, Fixnum, Hash)>] LinkRequestResponse data, response status code and response headers
    def get_link_requests_with_http_info(appId, userId, integrationIds, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_link_requests ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.get_link_requests"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.get_link_requests"
      end
      # verify the required parameter 'integrationIds' is set
      if @api_client.config.client_side_validation && integrationIds.nil?
        fail ArgumentError, "Missing the required parameter 'integrationIds' when calling AppUserApi.get_link_requests"
      end
      if @api_client.config.client_side_validation && integrationIds.length < 1
        fail ArgumentError, 'invalid value for "integrationIds" when calling AppUserApi.get_link_requests, number of items must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/linkrequest".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}
      query_params[:'integrationIds'] = @api_client.build_collection_param(integrationIds, :csv)

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
        :return_type => 'LinkRequestResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_link_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Link specified app user to given channel.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param appUserLinkBody Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def link_app_user(appId, userId, appUserLinkBody, opts = {})
      data, _status_code, _headers = link_app_user_with_http_info(appId, userId, appUserLinkBody, opts)
      return data
    end

    # 
    # Link specified app user to given channel.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param appUserLinkBody Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def link_app_user_with_http_info(appId, userId, appUserLinkBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.link_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.link_app_user"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.link_app_user"
      end
      # verify the required parameter 'appUserLinkBody' is set
      if @api_client.config.client_side_validation && appUserLinkBody.nil?
        fail ArgumentError, "Missing the required parameter 'appUserLinkBody' when calling AppUserApi.link_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/channels".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
      post_body = @api_client.object_to_http_body(appUserLinkBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#link_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Force the merge of two specific users, when the business has determined that they represent the same person.
    # @param appId Identifies the app.
    # @param appUserMergeBody Body for a mergeUsers request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def merge_users(appId, appUserMergeBody, opts = {})
      merge_users_with_http_info(appId, appUserMergeBody, opts)
      return nil
    end

    # 
    # Force the merge of two specific users, when the business has determined that they represent the same person.
    # @param appId Identifies the app.
    # @param appUserMergeBody Body for a mergeUsers request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def merge_users_with_http_info(appId, appUserMergeBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.merge_users ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.merge_users"
      end
      # verify the required parameter 'appUserMergeBody' is set
      if @api_client.config.client_side_validation && appUserMergeBody.nil?
        fail ArgumentError, "Missing the required parameter 'appUserMergeBody' when calling AppUserApi.merge_users"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/merge".sub('{' + 'appId' + '}', appId.to_s)

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
      post_body = @api_client.object_to_http_body(appUserMergeBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#merge_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Send an image message to the conversation.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def post_image_message(appId, userId, source, role, opts = {})
      data, _status_code, _headers = post_image_message_with_http_info(appId, userId, source, role, opts)
      return data
    end

    # 
    # Send an image message to the conversation.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Fixnum, Hash)>] MessageResponse data, response status code and response headers
    def post_image_message_with_http_info(appId, userId, source, role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.post_image_message ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AppUserApi.post_image_message"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/images".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
      form_params["role"] = role

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#post_image_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Pre-create an app user.
    # @param appId Identifies the app.
    # @param appUserPreCreateBody Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def pre_create_app_user(appId, appUserPreCreateBody, opts = {})
      data, _status_code, _headers = pre_create_app_user_with_http_info(appId, appUserPreCreateBody, opts)
      return data
    end

    # 
    # Pre-create an app user.
    # @param appId Identifies the app.
    # @param appUserPreCreateBody Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def pre_create_app_user_with_http_info(appId, appUserPreCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.pre_create_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.pre_create_app_user"
      end
      # verify the required parameter 'appUserPreCreateBody' is set
      if @api_client.config.client_side_validation && appUserPreCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'appUserPreCreateBody' when calling AppUserApi.pre_create_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers".sub('{' + 'appId' + '}', appId.to_s)

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
      post_body = @api_client.object_to_http_body(appUserPreCreateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#pre_create_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Unlink specified app user from given channel.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_app_user(appId, userId, channel, opts = {})
      unlink_app_user_with_http_info(appId, userId, channel, opts)
      return nil
    end

    # 
    # Unlink specified app user from given channel.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_app_user_with_http_info(appId, userId, channel, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.unlink_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.unlink_app_user"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.unlink_app_user"
      end
      # verify the required parameter 'channel' is set
      if @api_client.config.client_side_validation && channel.nil?
        fail ArgumentError, "Missing the required parameter 'channel' when calling AppUserApi.unlink_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/channels/{channel}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s).sub('{' + 'channel' + '}', channel.to_s)

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
        @api_client.config.logger.debug "API called: AppUserApi#unlink_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param appUserUpdateBody Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def update_app_user(appId, userId, appUserUpdateBody, opts = {})
      data, _status_code, _headers = update_app_user_with_http_info(appId, userId, appUserUpdateBody, opts)
      return data
    end

    # 
    # Update the specified app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param appUserUpdateBody Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def update_app_user_with_http_info(appId, userId, appUserUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.update_app_user ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppUserApi.update_app_user"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling AppUserApi.update_app_user"
      end
      # verify the required parameter 'appUserUpdateBody' is set
      if @api_client.config.client_side_validation && appUserUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'appUserUpdateBody' when calling AppUserApi.update_app_user"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

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
      post_body = @api_client.object_to_http_body(appUserUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#update_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
