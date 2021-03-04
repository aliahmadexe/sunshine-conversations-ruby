# SmoochApi::MessagePost

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | The role of the individual posting the message. See [**RoleEnum**](Enums.md#RoleEnum) for available values. | 
**type** | **String** | The message type. See [**MessageTypeEnum**](Enums.md#MessageTypeEnum) for available values. | 
**name** | **String** | The display name of the message author. | [optional] 
**email** | **String** | The email address of the message author. | [optional] 
**avatarUrl** | **String** | The URL of the desired message avatar image. | [optional] 
**metadata** | **Object** | Flat JSON object containing any custom properties associated with the message. | [optional] 
**payload** | **String** | The payload of a reply action, if applicable. | [optional] 
**text** | **String** | The message text. Required for text messages.  | [optional] 
**mediaUrl** | **String** | The mediaUrl for the message. Required for image/file messages.  | [optional] 
**mediaType** | **String** | The mediaType for the message. Required for image/file messages.  | [optional] 
**altText** | **String** | An optional description of the image or the file for accessibility purposes. The field will be saved by default with the file name as the value. | [optional] 
**items** | [**Array&lt;MessageItem&gt;**](MessageItem.md) | The items in the message list. Required for carousel and list messages.  | [optional] 
**actions** | [**Array&lt;Action&gt;**](Action.md) | The actions in the message. | [optional] 
**blockChatInput** | **BOOLEAN** | Indicates if the Web SDK chat input should be blocked. Defaults to false. Only for form messages.  | [optional] 
**displaySettings** | [**DisplaySettings**](DisplaySettings.md) | Settings to adjust the carousel layout. See [Display Settings](https://docs.smooch.io/rest/#display-settings). | [optional] 
**fields** | [**Array&lt;FieldPost&gt;**](FieldPost.md) | The fields in the form. Required for form messages.  | [optional] 
**destination** | [**Destination**](Destination.md) | Specifies which channel to deliver a message to. See [list integrations](https://docs.smooch.io/rest/#list-integrations) to get integration ID and type. | [optional] 
**override** | [**MessageOverride**](MessageOverride.md) | Specifies channel-specific overrides to use in order to bypass Smooch&#39;s message translation logic. | [optional] 
**coordinates** | [**Coordinates**](Coordinates.md) | Data representing the location being sent in the message. | [optional] 
**location** | [**Location**](Location.md) | Additional information about the location being sent in the message. | [optional] 


