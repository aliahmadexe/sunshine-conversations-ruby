=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Remove an attachment uploaded to Smooch.
    # @param app_id Identifies the app.
    # @param attachment_remove_body Body for a removeAttachment request. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_attachment(app_id, attachment_remove_body, opts = {})
      remove_attachment_with_http_info(app_id, attachment_remove_body, opts)
      return nil
    end

    # 
    # Remove an attachment uploaded to Smooch.
    # @param app_id Identifies the app.
    # @param attachment_remove_body Body for a removeAttachment request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_attachment_with_http_info(app_id, attachment_remove_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttachmentsApi.remove_attachment ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.remove_attachment"
      end
      # verify the required parameter 'attachment_remove_body' is set
      if @api_client.config.client_side_validation && attachment_remove_body.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_remove_body' when calling AttachmentsApi.remove_attachment"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/attachments/remove".sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = @api_client.object_to_http_body(attachment_remove_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#remove_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Upload an attachment to Smooch to use in future messages.
    # @param app_id Identifies the app.
    # @param source File to be uploaded
    # @param access Access level for the resulting file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for The intended container for the attachment
    # @option opts [String] :app_user_id The appUserId of the user that will receive the attachment Used in attachments for messages 
    # @option opts [String] :user_id The userId of the user that will receive the attachment Used in attachments for messages 
    # @return [AttachmentResponse]
    def upload_attachment(app_id, source, access, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(app_id, source, access, opts)
      return data
    end

    # 
    # Upload an attachment to Smooch to use in future messages.
    # @param app_id Identifies the app.
    # @param source File to be uploaded
    # @param access Access level for the resulting file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for The intended container for the attachment
    # @option opts [String] :app_user_id The appUserId of the user that will receive the attachment Used in attachments for messages 
    # @option opts [String] :user_id The userId of the user that will receive the attachment Used in attachments for messages 
    # @return [Array<(AttachmentResponse, Fixnum, Hash)>] AttachmentResponse data, response status code and response headers
    def upload_attachment_with_http_info(app_id, source, access, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttachmentsApi.upload_attachment ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'access' is set
      if @api_client.config.client_side_validation && access.nil?
        fail ArgumentError, "Missing the required parameter 'access' when calling AttachmentsApi.upload_attachment"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/attachments".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access'] = access
      query_params[:'for'] = opts[:'_for'] if !opts[:'_for'].nil?
      query_params[:'appUserId'] = opts[:'app_user_id'] if !opts[:'app_user_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
