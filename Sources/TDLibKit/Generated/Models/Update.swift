//
//  Update.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains notifications about data changes
public enum Update: Codable, Equatable {

    /// The user authorization state has changed
    case updateAuthorizationState(UpdateAuthorizationState)

    /// A new message was received; can also be an outgoing message
    case updateNewMessage(UpdateNewMessage)

    /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
    case updateMessageSendAcknowledged(UpdateMessageSendAcknowledged)

    /// A message has been successfully sent
    case updateMessageSendSucceeded(UpdateMessageSendSucceeded)

    /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
    case updateMessageSendFailed(UpdateMessageSendFailed)

    /// The message content has changed
    case updateMessageContent(UpdateMessageContent)

    /// A message was edited. Changes in the message content will come in a separate updateMessageContent
    case updateMessageEdited(UpdateMessageEdited)

    /// The message pinned state was changed
    case updateMessageIsPinned(UpdateMessageIsPinned)

    /// The information about interactions with a message has changed
    case updateMessageInteractionInfo(UpdateMessageInteractionInfo)

    /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
    case updateMessageContentOpened(UpdateMessageContentOpened)

    /// A message with an unread mention was read
    case updateMessageMentionRead(UpdateMessageMentionRead)

    /// The list of unread reactions added to a message was changed
    case updateMessageUnreadReactions(UpdateMessageUnreadReactions)

    /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
    case updateMessageLiveLocationViewed(UpdateMessageLiveLocationViewed)

    /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
    case updateNewChat(UpdateNewChat)

    /// The title of a chat was changed
    case updateChatTitle(UpdateChatTitle)

    /// A chat photo was changed
    case updateChatPhoto(UpdateChatPhoto)

    /// Chat permissions was changed
    case updateChatPermissions(UpdateChatPermissions)

    /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
    case updateChatLastMessage(UpdateChatLastMessage)

    /// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
    case updateChatPosition(UpdateChatPosition)

    /// Incoming messages were read or the number of unread messages has been changed
    case updateChatReadInbox(UpdateChatReadInbox)

    /// Outgoing messages were read
    case updateChatReadOutbox(UpdateChatReadOutbox)

    /// The chat action bar was changed
    case updateChatActionBar(UpdateChatActionBar)

    /// The chat available reactions were changed
    case updateChatAvailableReactions(UpdateChatAvailableReactions)

    /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
    case updateChatDraftMessage(UpdateChatDraftMessage)

    /// The message sender that is selected to send messages in a chat has changed
    case updateChatMessageSender(UpdateChatMessageSender)

    /// The message Time To Live setting for a chat was changed
    case updateChatMessageTtl(UpdateChatMessageTtl)

    /// Notification settings for a chat were changed
    case updateChatNotificationSettings(UpdateChatNotificationSettings)

    /// The chat pending join requests were changed
    case updateChatPendingJoinRequests(UpdateChatPendingJoinRequests)

    /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
    case updateChatReplyMarkup(UpdateChatReplyMarkup)

    /// The chat theme was changed
    case updateChatTheme(UpdateChatTheme)

    /// The chat unread_mention_count has changed
    case updateChatUnreadMentionCount(UpdateChatUnreadMentionCount)

    /// The chat unread_reaction_count has changed
    case updateChatUnreadReactionCount(UpdateChatUnreadReactionCount)

    /// A chat video chat state has changed
    case updateChatVideoChat(UpdateChatVideoChat)

    /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
    case updateChatDefaultDisableNotification(UpdateChatDefaultDisableNotification)

    /// A chat content was allowed or restricted for saving
    case updateChatHasProtectedContent(UpdateChatHasProtectedContent)

    /// A chat's has_scheduled_messages field has changed
    case updateChatHasScheduledMessages(UpdateChatHasScheduledMessages)

    /// A chat was blocked or unblocked
    case updateChatIsBlocked(UpdateChatIsBlocked)

    /// A chat was marked as unread or was read
    case updateChatIsMarkedAsUnread(UpdateChatIsMarkedAsUnread)

    /// The list of chat filters or a chat filter has changed
    case updateChatFilters(UpdateChatFilters)

    /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it will be sent just after the number of online users has changed
    case updateChatOnlineMemberCount(UpdateChatOnlineMemberCount)

    /// Notification settings for some type of chats were updated
    case updateScopeNotificationSettings(UpdateScopeNotificationSettings)

    /// A notification was changed
    case updateNotification(UpdateNotification)

    /// A list of active notifications in a notification group has changed
    case updateNotificationGroup(UpdateNotificationGroup)

    /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
    case updateActiveNotifications(UpdateActiveNotifications)

    /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
    case updateHavePendingNotifications(UpdateHavePendingNotifications)

    /// Some messages were deleted
    case updateDeleteMessages(UpdateDeleteMessages)

    /// A message sender activity in the chat has changed
    case updateChatAction(UpdateChatAction)

    /// The user went online or offline
    case updateUserStatus(UpdateUserStatus)

    /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
    case updateUser(UpdateUser)

    /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
    case updateBasicGroup(UpdateBasicGroup)

    /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
    case updateSupergroup(UpdateSupergroup)

    /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
    case updateSecretChat(UpdateSecretChat)

    /// Some data in userFullInfo has been changed
    case updateUserFullInfo(UpdateUserFullInfo)

    /// Some data in basicGroupFullInfo has been changed
    case updateBasicGroupFullInfo(UpdateBasicGroupFullInfo)

    /// Some data in supergroupFullInfo has been changed
    case updateSupergroupFullInfo(UpdateSupergroupFullInfo)

    /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
    case updateServiceNotification(UpdateServiceNotification)

    /// Information about a file was updated
    case updateFile(UpdateFile)

    /// The file generation process needs to be started by the application
    case updateFileGenerationStart(UpdateFileGenerationStart)

    /// File generation is no longer needed
    case updateFileGenerationStop(UpdateFileGenerationStop)

    /// The state of the file download list has changed
    case updateFileDownloads(UpdateFileDownloads)

    /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
    case updateFileAddedToDownloads(UpdateFileAddedToDownloads)

    /// A file download was changed. This update is sent only after file download list is loaded for the first time
    case updateFileDownload(UpdateFileDownload)

    /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
    case updateFileRemovedFromDownloads(UpdateFileRemovedFromDownloads)

    /// New call was created or information about a call was updated
    case updateCall(UpdateCall)

    /// Information about a group call was updated
    case updateGroupCall(UpdateGroupCall)

    /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
    case updateGroupCallParticipant(UpdateGroupCallParticipant)

    /// New call signaling data arrived
    case updateNewCallSignalingData(UpdateNewCallSignalingData)

    /// Some privacy setting rules have been changed
    case updateUserPrivacySettingRules(UpdateUserPrivacySettingRules)

    /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
    case updateUnreadMessageCount(UpdateUnreadMessageCount)

    /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
    case updateUnreadChatCount(UpdateUnreadChatCount)

    /// An option changed its value
    case updateOption(UpdateOption)

    /// A sticker set has changed
    case updateStickerSet(UpdateStickerSet)

    /// The list of installed sticker sets was updated
    case updateInstalledStickerSets(UpdateInstalledStickerSets)

    /// The list of trending sticker sets was updated or some of them were viewed
    case updateTrendingStickerSets(UpdateTrendingStickerSets)

    /// The list of recently used stickers was updated
    case updateRecentStickers(UpdateRecentStickers)

    /// The list of favorite stickers was updated
    case updateFavoriteStickers(UpdateFavoriteStickers)

    /// The list of saved animations was updated
    case updateSavedAnimations(UpdateSavedAnimations)

    /// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
    case updateSavedNotificationSounds(UpdateSavedNotificationSounds)

    /// The selected background has changed
    case updateSelectedBackground(UpdateSelectedBackground)

    /// The list of available chat themes has changed
    case updateChatThemes(UpdateChatThemes)

    /// Some language pack strings have been updated
    case updateLanguagePackStrings(UpdateLanguagePackStrings)

    /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
    case updateConnectionState(UpdateConnectionState)

    /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
    case updateTermsOfService(UpdateTermsOfService)

    /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
    case updateUsersNearby(UpdateUsersNearby)

    /// The list of bots added to attachment menu has changed
    case updateAttachmentMenuBots(UpdateAttachmentMenuBots)

    /// A message was sent by an opened Web App, so the Web App needs to be closed
    case updateWebAppMessageSent(UpdateWebAppMessageSent)

    /// The list of supported reactions has changed
    case updateReactions(UpdateReactions)

    /// The list of supported dice emojis has changed
    case updateDiceEmojis(UpdateDiceEmojis)

    /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
    case updateAnimatedEmojiMessageClicked(UpdateAnimatedEmojiMessageClicked)

    /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
    case updateAnimationSearchParameters(UpdateAnimationSearchParameters)

    /// The list of suggested to the user actions has changed
    case updateSuggestedActions(UpdateSuggestedActions)

    /// A new incoming inline query; for bots only
    case updateNewInlineQuery(UpdateNewInlineQuery)

    /// The user has chosen a result of an inline query; for bots only
    case updateNewChosenInlineResult(UpdateNewChosenInlineResult)

    /// A new incoming callback query; for bots only
    case updateNewCallbackQuery(UpdateNewCallbackQuery)

    /// A new incoming callback query from a message sent via a bot; for bots only
    case updateNewInlineCallbackQuery(UpdateNewInlineCallbackQuery)

    /// A new incoming shipping query; for bots only. Only for invoices with flexible price
    case updateNewShippingQuery(UpdateNewShippingQuery)

    /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
    case updateNewPreCheckoutQuery(UpdateNewPreCheckoutQuery)

    /// A new incoming event; for bots only
    case updateNewCustomEvent(UpdateNewCustomEvent)

    /// A new incoming query; for bots only
    case updateNewCustomQuery(UpdateNewCustomQuery)

    /// A poll was updated; for bots only
    case updatePoll(UpdatePoll)

    /// A user changed the answer to a poll; for bots only
    case updatePollAnswer(UpdatePollAnswer)

    /// User rights changed in a chat; for bots only
    case updateChatMember(UpdateChatMember)

    /// A user sent a join request to a chat; for bots only
    case updateNewChatJoinRequest(UpdateNewChatJoinRequest)


    private enum Kind: String, Codable {
        case updateAuthorizationState
        case updateNewMessage
        case updateMessageSendAcknowledged
        case updateMessageSendSucceeded
        case updateMessageSendFailed
        case updateMessageContent
        case updateMessageEdited
        case updateMessageIsPinned
        case updateMessageInteractionInfo
        case updateMessageContentOpened
        case updateMessageMentionRead
        case updateMessageUnreadReactions
        case updateMessageLiveLocationViewed
        case updateNewChat
        case updateChatTitle
        case updateChatPhoto
        case updateChatPermissions
        case updateChatLastMessage
        case updateChatPosition
        case updateChatReadInbox
        case updateChatReadOutbox
        case updateChatActionBar
        case updateChatAvailableReactions
        case updateChatDraftMessage
        case updateChatMessageSender
        case updateChatMessageTtl
        case updateChatNotificationSettings
        case updateChatPendingJoinRequests
        case updateChatReplyMarkup
        case updateChatTheme
        case updateChatUnreadMentionCount
        case updateChatUnreadReactionCount
        case updateChatVideoChat
        case updateChatDefaultDisableNotification
        case updateChatHasProtectedContent
        case updateChatHasScheduledMessages
        case updateChatIsBlocked
        case updateChatIsMarkedAsUnread
        case updateChatFilters
        case updateChatOnlineMemberCount
        case updateScopeNotificationSettings
        case updateNotification
        case updateNotificationGroup
        case updateActiveNotifications
        case updateHavePendingNotifications
        case updateDeleteMessages
        case updateChatAction
        case updateUserStatus
        case updateUser
        case updateBasicGroup
        case updateSupergroup
        case updateSecretChat
        case updateUserFullInfo
        case updateBasicGroupFullInfo
        case updateSupergroupFullInfo
        case updateServiceNotification
        case updateFile
        case updateFileGenerationStart
        case updateFileGenerationStop
        case updateFileDownloads
        case updateFileAddedToDownloads
        case updateFileDownload
        case updateFileRemovedFromDownloads
        case updateCall
        case updateGroupCall
        case updateGroupCallParticipant
        case updateNewCallSignalingData
        case updateUserPrivacySettingRules
        case updateUnreadMessageCount
        case updateUnreadChatCount
        case updateOption
        case updateStickerSet
        case updateInstalledStickerSets
        case updateTrendingStickerSets
        case updateRecentStickers
        case updateFavoriteStickers
        case updateSavedAnimations
        case updateSavedNotificationSounds
        case updateSelectedBackground
        case updateChatThemes
        case updateLanguagePackStrings
        case updateConnectionState
        case updateTermsOfService
        case updateUsersNearby
        case updateAttachmentMenuBots
        case updateWebAppMessageSent
        case updateReactions
        case updateDiceEmojis
        case updateAnimatedEmojiMessageClicked
        case updateAnimationSearchParameters
        case updateSuggestedActions
        case updateNewInlineQuery
        case updateNewChosenInlineResult
        case updateNewCallbackQuery
        case updateNewInlineCallbackQuery
        case updateNewShippingQuery
        case updateNewPreCheckoutQuery
        case updateNewCustomEvent
        case updateNewCustomQuery
        case updatePoll
        case updatePollAnswer
        case updateChatMember
        case updateNewChatJoinRequest
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .updateAuthorizationState:
            let value = try UpdateAuthorizationState(from: decoder)
            self = .updateAuthorizationState(value)
        case .updateNewMessage:
            let value = try UpdateNewMessage(from: decoder)
            self = .updateNewMessage(value)
        case .updateMessageSendAcknowledged:
            let value = try UpdateMessageSendAcknowledged(from: decoder)
            self = .updateMessageSendAcknowledged(value)
        case .updateMessageSendSucceeded:
            let value = try UpdateMessageSendSucceeded(from: decoder)
            self = .updateMessageSendSucceeded(value)
        case .updateMessageSendFailed:
            let value = try UpdateMessageSendFailed(from: decoder)
            self = .updateMessageSendFailed(value)
        case .updateMessageContent:
            let value = try UpdateMessageContent(from: decoder)
            self = .updateMessageContent(value)
        case .updateMessageEdited:
            let value = try UpdateMessageEdited(from: decoder)
            self = .updateMessageEdited(value)
        case .updateMessageIsPinned:
            let value = try UpdateMessageIsPinned(from: decoder)
            self = .updateMessageIsPinned(value)
        case .updateMessageInteractionInfo:
            let value = try UpdateMessageInteractionInfo(from: decoder)
            self = .updateMessageInteractionInfo(value)
        case .updateMessageContentOpened:
            let value = try UpdateMessageContentOpened(from: decoder)
            self = .updateMessageContentOpened(value)
        case .updateMessageMentionRead:
            let value = try UpdateMessageMentionRead(from: decoder)
            self = .updateMessageMentionRead(value)
        case .updateMessageUnreadReactions:
            let value = try UpdateMessageUnreadReactions(from: decoder)
            self = .updateMessageUnreadReactions(value)
        case .updateMessageLiveLocationViewed:
            let value = try UpdateMessageLiveLocationViewed(from: decoder)
            self = .updateMessageLiveLocationViewed(value)
        case .updateNewChat:
            let value = try UpdateNewChat(from: decoder)
            self = .updateNewChat(value)
        case .updateChatTitle:
            let value = try UpdateChatTitle(from: decoder)
            self = .updateChatTitle(value)
        case .updateChatPhoto:
            let value = try UpdateChatPhoto(from: decoder)
            self = .updateChatPhoto(value)
        case .updateChatPermissions:
            let value = try UpdateChatPermissions(from: decoder)
            self = .updateChatPermissions(value)
        case .updateChatLastMessage:
            let value = try UpdateChatLastMessage(from: decoder)
            self = .updateChatLastMessage(value)
        case .updateChatPosition:
            let value = try UpdateChatPosition(from: decoder)
            self = .updateChatPosition(value)
        case .updateChatReadInbox:
            let value = try UpdateChatReadInbox(from: decoder)
            self = .updateChatReadInbox(value)
        case .updateChatReadOutbox:
            let value = try UpdateChatReadOutbox(from: decoder)
            self = .updateChatReadOutbox(value)
        case .updateChatActionBar:
            let value = try UpdateChatActionBar(from: decoder)
            self = .updateChatActionBar(value)
        case .updateChatAvailableReactions:
            let value = try UpdateChatAvailableReactions(from: decoder)
            self = .updateChatAvailableReactions(value)
        case .updateChatDraftMessage:
            let value = try UpdateChatDraftMessage(from: decoder)
            self = .updateChatDraftMessage(value)
        case .updateChatMessageSender:
            let value = try UpdateChatMessageSender(from: decoder)
            self = .updateChatMessageSender(value)
        case .updateChatMessageTtl:
            let value = try UpdateChatMessageTtl(from: decoder)
            self = .updateChatMessageTtl(value)
        case .updateChatNotificationSettings:
            let value = try UpdateChatNotificationSettings(from: decoder)
            self = .updateChatNotificationSettings(value)
        case .updateChatPendingJoinRequests:
            let value = try UpdateChatPendingJoinRequests(from: decoder)
            self = .updateChatPendingJoinRequests(value)
        case .updateChatReplyMarkup:
            let value = try UpdateChatReplyMarkup(from: decoder)
            self = .updateChatReplyMarkup(value)
        case .updateChatTheme:
            let value = try UpdateChatTheme(from: decoder)
            self = .updateChatTheme(value)
        case .updateChatUnreadMentionCount:
            let value = try UpdateChatUnreadMentionCount(from: decoder)
            self = .updateChatUnreadMentionCount(value)
        case .updateChatUnreadReactionCount:
            let value = try UpdateChatUnreadReactionCount(from: decoder)
            self = .updateChatUnreadReactionCount(value)
        case .updateChatVideoChat:
            let value = try UpdateChatVideoChat(from: decoder)
            self = .updateChatVideoChat(value)
        case .updateChatDefaultDisableNotification:
            let value = try UpdateChatDefaultDisableNotification(from: decoder)
            self = .updateChatDefaultDisableNotification(value)
        case .updateChatHasProtectedContent:
            let value = try UpdateChatHasProtectedContent(from: decoder)
            self = .updateChatHasProtectedContent(value)
        case .updateChatHasScheduledMessages:
            let value = try UpdateChatHasScheduledMessages(from: decoder)
            self = .updateChatHasScheduledMessages(value)
        case .updateChatIsBlocked:
            let value = try UpdateChatIsBlocked(from: decoder)
            self = .updateChatIsBlocked(value)
        case .updateChatIsMarkedAsUnread:
            let value = try UpdateChatIsMarkedAsUnread(from: decoder)
            self = .updateChatIsMarkedAsUnread(value)
        case .updateChatFilters:
            let value = try UpdateChatFilters(from: decoder)
            self = .updateChatFilters(value)
        case .updateChatOnlineMemberCount:
            let value = try UpdateChatOnlineMemberCount(from: decoder)
            self = .updateChatOnlineMemberCount(value)
        case .updateScopeNotificationSettings:
            let value = try UpdateScopeNotificationSettings(from: decoder)
            self = .updateScopeNotificationSettings(value)
        case .updateNotification:
            let value = try UpdateNotification(from: decoder)
            self = .updateNotification(value)
        case .updateNotificationGroup:
            let value = try UpdateNotificationGroup(from: decoder)
            self = .updateNotificationGroup(value)
        case .updateActiveNotifications:
            let value = try UpdateActiveNotifications(from: decoder)
            self = .updateActiveNotifications(value)
        case .updateHavePendingNotifications:
            let value = try UpdateHavePendingNotifications(from: decoder)
            self = .updateHavePendingNotifications(value)
        case .updateDeleteMessages:
            let value = try UpdateDeleteMessages(from: decoder)
            self = .updateDeleteMessages(value)
        case .updateChatAction:
            let value = try UpdateChatAction(from: decoder)
            self = .updateChatAction(value)
        case .updateUserStatus:
            let value = try UpdateUserStatus(from: decoder)
            self = .updateUserStatus(value)
        case .updateUser:
            let value = try UpdateUser(from: decoder)
            self = .updateUser(value)
        case .updateBasicGroup:
            let value = try UpdateBasicGroup(from: decoder)
            self = .updateBasicGroup(value)
        case .updateSupergroup:
            let value = try UpdateSupergroup(from: decoder)
            self = .updateSupergroup(value)
        case .updateSecretChat:
            let value = try UpdateSecretChat(from: decoder)
            self = .updateSecretChat(value)
        case .updateUserFullInfo:
            let value = try UpdateUserFullInfo(from: decoder)
            self = .updateUserFullInfo(value)
        case .updateBasicGroupFullInfo:
            let value = try UpdateBasicGroupFullInfo(from: decoder)
            self = .updateBasicGroupFullInfo(value)
        case .updateSupergroupFullInfo:
            let value = try UpdateSupergroupFullInfo(from: decoder)
            self = .updateSupergroupFullInfo(value)
        case .updateServiceNotification:
            let value = try UpdateServiceNotification(from: decoder)
            self = .updateServiceNotification(value)
        case .updateFile:
            let value = try UpdateFile(from: decoder)
            self = .updateFile(value)
        case .updateFileGenerationStart:
            let value = try UpdateFileGenerationStart(from: decoder)
            self = .updateFileGenerationStart(value)
        case .updateFileGenerationStop:
            let value = try UpdateFileGenerationStop(from: decoder)
            self = .updateFileGenerationStop(value)
        case .updateFileDownloads:
            let value = try UpdateFileDownloads(from: decoder)
            self = .updateFileDownloads(value)
        case .updateFileAddedToDownloads:
            let value = try UpdateFileAddedToDownloads(from: decoder)
            self = .updateFileAddedToDownloads(value)
        case .updateFileDownload:
            let value = try UpdateFileDownload(from: decoder)
            self = .updateFileDownload(value)
        case .updateFileRemovedFromDownloads:
            let value = try UpdateFileRemovedFromDownloads(from: decoder)
            self = .updateFileRemovedFromDownloads(value)
        case .updateCall:
            let value = try UpdateCall(from: decoder)
            self = .updateCall(value)
        case .updateGroupCall:
            let value = try UpdateGroupCall(from: decoder)
            self = .updateGroupCall(value)
        case .updateGroupCallParticipant:
            let value = try UpdateGroupCallParticipant(from: decoder)
            self = .updateGroupCallParticipant(value)
        case .updateNewCallSignalingData:
            let value = try UpdateNewCallSignalingData(from: decoder)
            self = .updateNewCallSignalingData(value)
        case .updateUserPrivacySettingRules:
            let value = try UpdateUserPrivacySettingRules(from: decoder)
            self = .updateUserPrivacySettingRules(value)
        case .updateUnreadMessageCount:
            let value = try UpdateUnreadMessageCount(from: decoder)
            self = .updateUnreadMessageCount(value)
        case .updateUnreadChatCount:
            let value = try UpdateUnreadChatCount(from: decoder)
            self = .updateUnreadChatCount(value)
        case .updateOption:
            let value = try UpdateOption(from: decoder)
            self = .updateOption(value)
        case .updateStickerSet:
            let value = try UpdateStickerSet(from: decoder)
            self = .updateStickerSet(value)
        case .updateInstalledStickerSets:
            let value = try UpdateInstalledStickerSets(from: decoder)
            self = .updateInstalledStickerSets(value)
        case .updateTrendingStickerSets:
            let value = try UpdateTrendingStickerSets(from: decoder)
            self = .updateTrendingStickerSets(value)
        case .updateRecentStickers:
            let value = try UpdateRecentStickers(from: decoder)
            self = .updateRecentStickers(value)
        case .updateFavoriteStickers:
            let value = try UpdateFavoriteStickers(from: decoder)
            self = .updateFavoriteStickers(value)
        case .updateSavedAnimations:
            let value = try UpdateSavedAnimations(from: decoder)
            self = .updateSavedAnimations(value)
        case .updateSavedNotificationSounds:
            let value = try UpdateSavedNotificationSounds(from: decoder)
            self = .updateSavedNotificationSounds(value)
        case .updateSelectedBackground:
            let value = try UpdateSelectedBackground(from: decoder)
            self = .updateSelectedBackground(value)
        case .updateChatThemes:
            let value = try UpdateChatThemes(from: decoder)
            self = .updateChatThemes(value)
        case .updateLanguagePackStrings:
            let value = try UpdateLanguagePackStrings(from: decoder)
            self = .updateLanguagePackStrings(value)
        case .updateConnectionState:
            let value = try UpdateConnectionState(from: decoder)
            self = .updateConnectionState(value)
        case .updateTermsOfService:
            let value = try UpdateTermsOfService(from: decoder)
            self = .updateTermsOfService(value)
        case .updateUsersNearby:
            let value = try UpdateUsersNearby(from: decoder)
            self = .updateUsersNearby(value)
        case .updateAttachmentMenuBots:
            let value = try UpdateAttachmentMenuBots(from: decoder)
            self = .updateAttachmentMenuBots(value)
        case .updateWebAppMessageSent:
            let value = try UpdateWebAppMessageSent(from: decoder)
            self = .updateWebAppMessageSent(value)
        case .updateReactions:
            let value = try UpdateReactions(from: decoder)
            self = .updateReactions(value)
        case .updateDiceEmojis:
            let value = try UpdateDiceEmojis(from: decoder)
            self = .updateDiceEmojis(value)
        case .updateAnimatedEmojiMessageClicked:
            let value = try UpdateAnimatedEmojiMessageClicked(from: decoder)
            self = .updateAnimatedEmojiMessageClicked(value)
        case .updateAnimationSearchParameters:
            let value = try UpdateAnimationSearchParameters(from: decoder)
            self = .updateAnimationSearchParameters(value)
        case .updateSuggestedActions:
            let value = try UpdateSuggestedActions(from: decoder)
            self = .updateSuggestedActions(value)
        case .updateNewInlineQuery:
            let value = try UpdateNewInlineQuery(from: decoder)
            self = .updateNewInlineQuery(value)
        case .updateNewChosenInlineResult:
            let value = try UpdateNewChosenInlineResult(from: decoder)
            self = .updateNewChosenInlineResult(value)
        case .updateNewCallbackQuery:
            let value = try UpdateNewCallbackQuery(from: decoder)
            self = .updateNewCallbackQuery(value)
        case .updateNewInlineCallbackQuery:
            let value = try UpdateNewInlineCallbackQuery(from: decoder)
            self = .updateNewInlineCallbackQuery(value)
        case .updateNewShippingQuery:
            let value = try UpdateNewShippingQuery(from: decoder)
            self = .updateNewShippingQuery(value)
        case .updateNewPreCheckoutQuery:
            let value = try UpdateNewPreCheckoutQuery(from: decoder)
            self = .updateNewPreCheckoutQuery(value)
        case .updateNewCustomEvent:
            let value = try UpdateNewCustomEvent(from: decoder)
            self = .updateNewCustomEvent(value)
        case .updateNewCustomQuery:
            let value = try UpdateNewCustomQuery(from: decoder)
            self = .updateNewCustomQuery(value)
        case .updatePoll:
            let value = try UpdatePoll(from: decoder)
            self = .updatePoll(value)
        case .updatePollAnswer:
            let value = try UpdatePollAnswer(from: decoder)
            self = .updatePollAnswer(value)
        case .updateChatMember:
            let value = try UpdateChatMember(from: decoder)
            self = .updateChatMember(value)
        case .updateNewChatJoinRequest:
            let value = try UpdateNewChatJoinRequest(from: decoder)
            self = .updateNewChatJoinRequest(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .updateAuthorizationState(let value):
            try container.encode(Kind.updateAuthorizationState, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewMessage(let value):
            try container.encode(Kind.updateNewMessage, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageSendAcknowledged(let value):
            try container.encode(Kind.updateMessageSendAcknowledged, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageSendSucceeded(let value):
            try container.encode(Kind.updateMessageSendSucceeded, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageSendFailed(let value):
            try container.encode(Kind.updateMessageSendFailed, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageContent(let value):
            try container.encode(Kind.updateMessageContent, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageEdited(let value):
            try container.encode(Kind.updateMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageIsPinned(let value):
            try container.encode(Kind.updateMessageIsPinned, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageInteractionInfo(let value):
            try container.encode(Kind.updateMessageInteractionInfo, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageContentOpened(let value):
            try container.encode(Kind.updateMessageContentOpened, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageMentionRead(let value):
            try container.encode(Kind.updateMessageMentionRead, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageUnreadReactions(let value):
            try container.encode(Kind.updateMessageUnreadReactions, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageLiveLocationViewed(let value):
            try container.encode(Kind.updateMessageLiveLocationViewed, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewChat(let value):
            try container.encode(Kind.updateNewChat, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatTitle(let value):
            try container.encode(Kind.updateChatTitle, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatPhoto(let value):
            try container.encode(Kind.updateChatPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatPermissions(let value):
            try container.encode(Kind.updateChatPermissions, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatLastMessage(let value):
            try container.encode(Kind.updateChatLastMessage, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatPosition(let value):
            try container.encode(Kind.updateChatPosition, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatReadInbox(let value):
            try container.encode(Kind.updateChatReadInbox, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatReadOutbox(let value):
            try container.encode(Kind.updateChatReadOutbox, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatActionBar(let value):
            try container.encode(Kind.updateChatActionBar, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatAvailableReactions(let value):
            try container.encode(Kind.updateChatAvailableReactions, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatDraftMessage(let value):
            try container.encode(Kind.updateChatDraftMessage, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatMessageSender(let value):
            try container.encode(Kind.updateChatMessageSender, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatMessageTtl(let value):
            try container.encode(Kind.updateChatMessageTtl, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatNotificationSettings(let value):
            try container.encode(Kind.updateChatNotificationSettings, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatPendingJoinRequests(let value):
            try container.encode(Kind.updateChatPendingJoinRequests, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatReplyMarkup(let value):
            try container.encode(Kind.updateChatReplyMarkup, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatTheme(let value):
            try container.encode(Kind.updateChatTheme, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatUnreadMentionCount(let value):
            try container.encode(Kind.updateChatUnreadMentionCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatUnreadReactionCount(let value):
            try container.encode(Kind.updateChatUnreadReactionCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatVideoChat(let value):
            try container.encode(Kind.updateChatVideoChat, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatDefaultDisableNotification(let value):
            try container.encode(Kind.updateChatDefaultDisableNotification, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatHasProtectedContent(let value):
            try container.encode(Kind.updateChatHasProtectedContent, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatHasScheduledMessages(let value):
            try container.encode(Kind.updateChatHasScheduledMessages, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatIsBlocked(let value):
            try container.encode(Kind.updateChatIsBlocked, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatIsMarkedAsUnread(let value):
            try container.encode(Kind.updateChatIsMarkedAsUnread, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatFilters(let value):
            try container.encode(Kind.updateChatFilters, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatOnlineMemberCount(let value):
            try container.encode(Kind.updateChatOnlineMemberCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateScopeNotificationSettings(let value):
            try container.encode(Kind.updateScopeNotificationSettings, forKey: .type)
            try value.encode(to: encoder)
        case .updateNotification(let value):
            try container.encode(Kind.updateNotification, forKey: .type)
            try value.encode(to: encoder)
        case .updateNotificationGroup(let value):
            try container.encode(Kind.updateNotificationGroup, forKey: .type)
            try value.encode(to: encoder)
        case .updateActiveNotifications(let value):
            try container.encode(Kind.updateActiveNotifications, forKey: .type)
            try value.encode(to: encoder)
        case .updateHavePendingNotifications(let value):
            try container.encode(Kind.updateHavePendingNotifications, forKey: .type)
            try value.encode(to: encoder)
        case .updateDeleteMessages(let value):
            try container.encode(Kind.updateDeleteMessages, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatAction(let value):
            try container.encode(Kind.updateChatAction, forKey: .type)
            try value.encode(to: encoder)
        case .updateUserStatus(let value):
            try container.encode(Kind.updateUserStatus, forKey: .type)
            try value.encode(to: encoder)
        case .updateUser(let value):
            try container.encode(Kind.updateUser, forKey: .type)
            try value.encode(to: encoder)
        case .updateBasicGroup(let value):
            try container.encode(Kind.updateBasicGroup, forKey: .type)
            try value.encode(to: encoder)
        case .updateSupergroup(let value):
            try container.encode(Kind.updateSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .updateSecretChat(let value):
            try container.encode(Kind.updateSecretChat, forKey: .type)
            try value.encode(to: encoder)
        case .updateUserFullInfo(let value):
            try container.encode(Kind.updateUserFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .updateBasicGroupFullInfo(let value):
            try container.encode(Kind.updateBasicGroupFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .updateSupergroupFullInfo(let value):
            try container.encode(Kind.updateSupergroupFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .updateServiceNotification(let value):
            try container.encode(Kind.updateServiceNotification, forKey: .type)
            try value.encode(to: encoder)
        case .updateFile(let value):
            try container.encode(Kind.updateFile, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileGenerationStart(let value):
            try container.encode(Kind.updateFileGenerationStart, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileGenerationStop(let value):
            try container.encode(Kind.updateFileGenerationStop, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileDownloads(let value):
            try container.encode(Kind.updateFileDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileAddedToDownloads(let value):
            try container.encode(Kind.updateFileAddedToDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileDownload(let value):
            try container.encode(Kind.updateFileDownload, forKey: .type)
            try value.encode(to: encoder)
        case .updateFileRemovedFromDownloads(let value):
            try container.encode(Kind.updateFileRemovedFromDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .updateCall(let value):
            try container.encode(Kind.updateCall, forKey: .type)
            try value.encode(to: encoder)
        case .updateGroupCall(let value):
            try container.encode(Kind.updateGroupCall, forKey: .type)
            try value.encode(to: encoder)
        case .updateGroupCallParticipant(let value):
            try container.encode(Kind.updateGroupCallParticipant, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewCallSignalingData(let value):
            try container.encode(Kind.updateNewCallSignalingData, forKey: .type)
            try value.encode(to: encoder)
        case .updateUserPrivacySettingRules(let value):
            try container.encode(Kind.updateUserPrivacySettingRules, forKey: .type)
            try value.encode(to: encoder)
        case .updateUnreadMessageCount(let value):
            try container.encode(Kind.updateUnreadMessageCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateUnreadChatCount(let value):
            try container.encode(Kind.updateUnreadChatCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateOption(let value):
            try container.encode(Kind.updateOption, forKey: .type)
            try value.encode(to: encoder)
        case .updateStickerSet(let value):
            try container.encode(Kind.updateStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .updateInstalledStickerSets(let value):
            try container.encode(Kind.updateInstalledStickerSets, forKey: .type)
            try value.encode(to: encoder)
        case .updateTrendingStickerSets(let value):
            try container.encode(Kind.updateTrendingStickerSets, forKey: .type)
            try value.encode(to: encoder)
        case .updateRecentStickers(let value):
            try container.encode(Kind.updateRecentStickers, forKey: .type)
            try value.encode(to: encoder)
        case .updateFavoriteStickers(let value):
            try container.encode(Kind.updateFavoriteStickers, forKey: .type)
            try value.encode(to: encoder)
        case .updateSavedAnimations(let value):
            try container.encode(Kind.updateSavedAnimations, forKey: .type)
            try value.encode(to: encoder)
        case .updateSavedNotificationSounds(let value):
            try container.encode(Kind.updateSavedNotificationSounds, forKey: .type)
            try value.encode(to: encoder)
        case .updateSelectedBackground(let value):
            try container.encode(Kind.updateSelectedBackground, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatThemes(let value):
            try container.encode(Kind.updateChatThemes, forKey: .type)
            try value.encode(to: encoder)
        case .updateLanguagePackStrings(let value):
            try container.encode(Kind.updateLanguagePackStrings, forKey: .type)
            try value.encode(to: encoder)
        case .updateConnectionState(let value):
            try container.encode(Kind.updateConnectionState, forKey: .type)
            try value.encode(to: encoder)
        case .updateTermsOfService(let value):
            try container.encode(Kind.updateTermsOfService, forKey: .type)
            try value.encode(to: encoder)
        case .updateUsersNearby(let value):
            try container.encode(Kind.updateUsersNearby, forKey: .type)
            try value.encode(to: encoder)
        case .updateAttachmentMenuBots(let value):
            try container.encode(Kind.updateAttachmentMenuBots, forKey: .type)
            try value.encode(to: encoder)
        case .updateWebAppMessageSent(let value):
            try container.encode(Kind.updateWebAppMessageSent, forKey: .type)
            try value.encode(to: encoder)
        case .updateReactions(let value):
            try container.encode(Kind.updateReactions, forKey: .type)
            try value.encode(to: encoder)
        case .updateDiceEmojis(let value):
            try container.encode(Kind.updateDiceEmojis, forKey: .type)
            try value.encode(to: encoder)
        case .updateAnimatedEmojiMessageClicked(let value):
            try container.encode(Kind.updateAnimatedEmojiMessageClicked, forKey: .type)
            try value.encode(to: encoder)
        case .updateAnimationSearchParameters(let value):
            try container.encode(Kind.updateAnimationSearchParameters, forKey: .type)
            try value.encode(to: encoder)
        case .updateSuggestedActions(let value):
            try container.encode(Kind.updateSuggestedActions, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewInlineQuery(let value):
            try container.encode(Kind.updateNewInlineQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewChosenInlineResult(let value):
            try container.encode(Kind.updateNewChosenInlineResult, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewCallbackQuery(let value):
            try container.encode(Kind.updateNewCallbackQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewInlineCallbackQuery(let value):
            try container.encode(Kind.updateNewInlineCallbackQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewShippingQuery(let value):
            try container.encode(Kind.updateNewShippingQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewPreCheckoutQuery(let value):
            try container.encode(Kind.updateNewPreCheckoutQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewCustomEvent(let value):
            try container.encode(Kind.updateNewCustomEvent, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewCustomQuery(let value):
            try container.encode(Kind.updateNewCustomQuery, forKey: .type)
            try value.encode(to: encoder)
        case .updatePoll(let value):
            try container.encode(Kind.updatePoll, forKey: .type)
            try value.encode(to: encoder)
        case .updatePollAnswer(let value):
            try container.encode(Kind.updatePollAnswer, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatMember(let value):
            try container.encode(Kind.updateChatMember, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewChatJoinRequest(let value):
            try container.encode(Kind.updateNewChatJoinRequest, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user authorization state has changed
public struct UpdateAuthorizationState: Codable, Equatable {

    /// New authorization state
    public let authorizationState: AuthorizationState


    public init(authorizationState: AuthorizationState) {
        self.authorizationState = authorizationState
    }
}

/// A new message was received; can also be an outgoing message
public struct UpdateNewMessage: Codable, Equatable {

    /// The new message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
public struct UpdateMessageSendAcknowledged: Codable, Equatable {

    /// The chat identifier of the sent message
    public let chatId: Int64

    /// A temporary message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A message has been successfully sent
public struct UpdateMessageSendSucceeded: Codable, Equatable {

    /// The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
    public let message: Message

    /// The previous temporary message identifier
    public let oldMessageId: Int64


    public init(
        message: Message,
        oldMessageId: Int64
    ) {
        self.message = message
        self.oldMessageId = oldMessageId
    }
}

/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
public struct UpdateMessageSendFailed: Codable, Equatable {

    /// An error code
    public let errorCode: Int

    /// Error message
    public let errorMessage: String

    /// The failed to send message
    public let message: Message

    /// The previous temporary message identifier
    public let oldMessageId: Int64


    public init(
        errorCode: Int,
        errorMessage: String,
        message: Message,
        oldMessageId: Int64
    ) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.message = message
        self.oldMessageId = oldMessageId
    }
}

/// The message content has changed
public struct UpdateMessageContent: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// New message content
    public let newContent: MessageContent


    public init(
        chatId: Int64,
        messageId: Int64,
        newContent: MessageContent
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.newContent = newContent
    }
}

/// A message was edited. Changes in the message content will come in a separate updateMessageContent
public struct UpdateMessageEdited: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the message was edited
    public let editDate: Int

    /// Message identifier
    public let messageId: Int64

    /// New message reply markup; may be null
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64,
        editDate: Int,
        messageId: Int64,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.editDate = editDate
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

/// The message pinned state was changed
public struct UpdateMessageIsPinned: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// True, if the message is pinned
    public let isPinned: Bool

    /// The message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        isPinned: Bool,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.isPinned = isPinned
        self.messageId = messageId
    }
}

/// The information about interactions with a message has changed
public struct UpdateMessageInteractionInfo: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New information about interactions with the message; may be null
    public let interactionInfo: MessageInteractionInfo?

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        interactionInfo: MessageInteractionInfo?,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.interactionInfo = interactionInfo
        self.messageId = messageId
    }
}

/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
public struct UpdateMessageContentOpened: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A message with an unread mention was read
public struct UpdateMessageMentionRead: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The new number of unread mention messages left in the chat
    public let unreadMentionCount: Int


    public init(
        chatId: Int64,
        messageId: Int64,
        unreadMentionCount: Int
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.unreadMentionCount = unreadMentionCount
    }
}

/// The list of unread reactions added to a message was changed
public struct UpdateMessageUnreadReactions: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The new number of messages with unread reactions left in the chat
    public let unreadReactionCount: Int

    /// The new list of unread reactions
    public let unreadReactions: [UnreadReaction]


    public init(
        chatId: Int64,
        messageId: Int64,
        unreadReactionCount: Int,
        unreadReactions: [UnreadReaction]
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.unreadReactionCount = unreadReactionCount
        self.unreadReactions = unreadReactions
    }
}

/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
public struct UpdateMessageLiveLocationViewed: Codable, Equatable {

    /// Identifier of the chat with the live location message
    public let chatId: Int64

    /// Identifier of the message with live location
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
public struct UpdateNewChat: Codable, Equatable {

    /// The chat
    public let chat: Chat


    public init(chat: Chat) {
        self.chat = chat
    }
}

/// The title of a chat was changed
public struct UpdateChatTitle: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat title
    public let title: String


    public init(
        chatId: Int64,
        title: String
    ) {
        self.chatId = chatId
        self.title = title
    }
}

/// A chat photo was changed
public struct UpdateChatPhoto: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat photo; may be null
    public let photo: ChatPhotoInfo?


    public init(
        chatId: Int64,
        photo: ChatPhotoInfo?
    ) {
        self.chatId = chatId
        self.photo = photo
    }
}

/// Chat permissions was changed
public struct UpdateChatPermissions: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat permissions
    public let permissions: ChatPermissions


    public init(
        chatId: Int64,
        permissions: ChatPermissions
    ) {
        self.chatId = chatId
        self.permissions = permissions
    }
}

/// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
public struct UpdateChatLastMessage: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new last message in the chat; may be null
    public let lastMessage: Message?

    /// The new chat positions in the chat lists
    public let positions: [ChatPosition]


    public init(
        chatId: Int64,
        lastMessage: Message?,
        positions: [ChatPosition]
    ) {
        self.chatId = chatId
        self.lastMessage = lastMessage
        self.positions = positions
    }
}

/// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
public struct UpdateChatPosition: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New chat position. If new order is 0, then the chat needs to be removed from the list
    public let position: ChatPosition


    public init(
        chatId: Int64,
        position: ChatPosition
    ) {
        self.chatId = chatId
        self.position = position
    }
}

/// Incoming messages were read or the number of unread messages has been changed
public struct UpdateChatReadInbox: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the last read incoming message
    public let lastReadInboxMessageId: Int64

    /// The number of unread messages left in the chat
    public let unreadCount: Int


    public init(
        chatId: Int64,
        lastReadInboxMessageId: Int64,
        unreadCount: Int
    ) {
        self.chatId = chatId
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.unreadCount = unreadCount
    }
}

/// Outgoing messages were read
public struct UpdateChatReadOutbox: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of last read outgoing message
    public let lastReadOutboxMessageId: Int64


    public init(
        chatId: Int64,
        lastReadOutboxMessageId: Int64
    ) {
        self.chatId = chatId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
    }
}

/// The chat action bar was changed
public struct UpdateChatActionBar: Codable, Equatable {

    /// The new value of the action bar; may be null
    public let actionBar: ChatActionBar?

    /// Chat identifier
    public let chatId: Int64


    public init(
        actionBar: ChatActionBar?,
        chatId: Int64
    ) {
        self.actionBar = actionBar
        self.chatId = chatId
    }
}

/// The chat available reactions were changed
public struct UpdateChatAvailableReactions: Codable, Equatable {

    /// The new list of reactions, available in the chat
    public let availableReactions: [String]

    /// Chat identifier
    public let chatId: Int64


    public init(
        availableReactions: [String],
        chatId: Int64
    ) {
        self.availableReactions = availableReactions
        self.chatId = chatId
    }
}

/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
public struct UpdateChatDraftMessage: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new draft message; may be null
    public let draftMessage: DraftMessage?

    /// The new chat positions in the chat lists
    public let positions: [ChatPosition]


    public init(
        chatId: Int64,
        draftMessage: DraftMessage?,
        positions: [ChatPosition]
    ) {
        self.chatId = chatId
        self.draftMessage = draftMessage
        self.positions = positions
    }
}

/// The message sender that is selected to send messages in a chat has changed
public struct UpdateChatMessageSender: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of message_sender_id; may be null if the user can't change message sender
    public let messageSenderId: MessageSender?


    public init(
        chatId: Int64,
        messageSenderId: MessageSender?
    ) {
        self.chatId = chatId
        self.messageSenderId = messageSenderId
    }
}

/// The message Time To Live setting for a chat was changed
public struct UpdateChatMessageTtl: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of message_ttl
    public let messageTtl: Int


    public init(
        chatId: Int64,
        messageTtl: Int
    ) {
        self.chatId = chatId
        self.messageTtl = messageTtl
    }
}

/// Notification settings for a chat were changed
public struct UpdateChatNotificationSettings: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new notification settings
    public let notificationSettings: ChatNotificationSettings


    public init(
        chatId: Int64,
        notificationSettings: ChatNotificationSettings
    ) {
        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

/// The chat pending join requests were changed
public struct UpdateChatPendingJoinRequests: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new data about pending join requests; may be null
    public let pendingJoinRequests: ChatJoinRequestsInfo?


    public init(
        chatId: Int64,
        pendingJoinRequests: ChatJoinRequestsInfo?
    ) {
        self.chatId = chatId
        self.pendingJoinRequests = pendingJoinRequests
    }
}

/// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
public struct UpdateChatReplyMarkup: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
    public let replyMarkupMessageId: Int64


    public init(
        chatId: Int64,
        replyMarkupMessageId: Int64
    ) {
        self.chatId = chatId
        self.replyMarkupMessageId = replyMarkupMessageId
    }
}

/// The chat theme was changed
public struct UpdateChatTheme: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new name of the chat theme; may be empty if theme was reset to default
    public let themeName: String


    public init(
        chatId: Int64,
        themeName: String
    ) {
        self.chatId = chatId
        self.themeName = themeName
    }
}

/// The chat unread_mention_count has changed
public struct UpdateChatUnreadMentionCount: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of unread mention messages left in the chat
    public let unreadMentionCount: Int


    public init(
        chatId: Int64,
        unreadMentionCount: Int
    ) {
        self.chatId = chatId
        self.unreadMentionCount = unreadMentionCount
    }
}

/// The chat unread_reaction_count has changed
public struct UpdateChatUnreadReactionCount: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of messages with unread reactions left in the chat
    public let unreadReactionCount: Int


    public init(
        chatId: Int64,
        unreadReactionCount: Int
    ) {
        self.chatId = chatId
        self.unreadReactionCount = unreadReactionCount
    }
}

/// A chat video chat state has changed
public struct UpdateChatVideoChat: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of video_chat
    public let videoChat: VideoChat


    public init(
        chatId: Int64,
        videoChat: VideoChat
    ) {
        self.chatId = chatId
        self.videoChat = videoChat
    }
}

/// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
public struct UpdateChatDefaultDisableNotification: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The new default_disable_notification value
    public let defaultDisableNotification: Bool


    public init(
        chatId: Int64,
        defaultDisableNotification: Bool
    ) {
        self.chatId = chatId
        self.defaultDisableNotification = defaultDisableNotification
    }
}

/// A chat content was allowed or restricted for saving
public struct UpdateChatHasProtectedContent: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of has_protected_content
    public let hasProtectedContent: Bool


    public init(
        chatId: Int64,
        hasProtectedContent: Bool
    ) {
        self.chatId = chatId
        self.hasProtectedContent = hasProtectedContent
    }
}

/// A chat's has_scheduled_messages field has changed
public struct UpdateChatHasScheduledMessages: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of has_scheduled_messages
    public let hasScheduledMessages: Bool


    public init(
        chatId: Int64,
        hasScheduledMessages: Bool
    ) {
        self.chatId = chatId
        self.hasScheduledMessages = hasScheduledMessages
    }
}

/// A chat was blocked or unblocked
public struct UpdateChatIsBlocked: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_blocked
    public let isBlocked: Bool


    public init(
        chatId: Int64,
        isBlocked: Bool
    ) {
        self.chatId = chatId
        self.isBlocked = isBlocked
    }
}

/// A chat was marked as unread or was read
public struct UpdateChatIsMarkedAsUnread: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_marked_as_unread
    public let isMarkedAsUnread: Bool


    public init(
        chatId: Int64,
        isMarkedAsUnread: Bool
    ) {
        self.chatId = chatId
        self.isMarkedAsUnread = isMarkedAsUnread
    }
}

/// The list of chat filters or a chat filter has changed
public struct UpdateChatFilters: Codable, Equatable {

    /// The new list of chat filters
    public let chatFilters: [ChatFilterInfo]

    /// Position of the main chat list among chat filters, 0-based
    public let mainChatListPosition: Int


    public init(
        chatFilters: [ChatFilterInfo],
        mainChatListPosition: Int
    ) {
        self.chatFilters = chatFilters
        self.mainChatListPosition = mainChatListPosition
    }
}

/// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it will be sent just after the number of online users has changed
public struct UpdateChatOnlineMemberCount: Codable, Equatable {

    /// Identifier of the chat
    public let chatId: Int64

    /// New number of online members in the chat, or 0 if unknown
    public let onlineMemberCount: Int


    public init(
        chatId: Int64,
        onlineMemberCount: Int
    ) {
        self.chatId = chatId
        self.onlineMemberCount = onlineMemberCount
    }
}

/// Notification settings for some type of chats were updated
public struct UpdateScopeNotificationSettings: Codable, Equatable {

    /// The new notification settings
    public let notificationSettings: ScopeNotificationSettings

    /// Types of chats for which notification settings were updated
    public let scope: NotificationSettingsScope


    public init(
        notificationSettings: ScopeNotificationSettings,
        scope: NotificationSettingsScope
    ) {
        self.notificationSettings = notificationSettings
        self.scope = scope
    }
}

/// A notification was changed
public struct UpdateNotification: Codable, Equatable {

    /// Changed notification
    public let notification: Notification

    /// Unique notification group identifier
    public let notificationGroupId: Int


    public init(
        notification: Notification,
        notificationGroupId: Int
    ) {
        self.notification = notification
        self.notificationGroupId = notificationGroupId
    }
}

/// A list of active notifications in a notification group has changed
public struct UpdateNotificationGroup: Codable, Equatable {

    /// List of added group notifications, sorted by notification ID
    public let addedNotifications: [Notification]

    /// Identifier of a chat to which all notifications in the group belong
    public let chatId: Int64

    /// Unique notification group identifier
    public let notificationGroupId: Int

    /// Chat identifier, which notification settings must be applied to the added notifications
    public let notificationSettingsChatId: Int64

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let notificationSoundId: TdInt64

    /// Identifiers of removed group notifications, sorted by notification ID
    public let removedNotificationIds: [Int]

    /// Total number of unread notifications in the group, can be bigger than number of active notifications
    public let totalCount: Int

    /// New type of the notification group
    public let type: NotificationGroupType


    public init(
        addedNotifications: [Notification],
        chatId: Int64,
        notificationGroupId: Int,
        notificationSettingsChatId: Int64,
        notificationSoundId: TdInt64,
        removedNotificationIds: [Int],
        totalCount: Int,
        type: NotificationGroupType
    ) {
        self.addedNotifications = addedNotifications
        self.chatId = chatId
        self.notificationGroupId = notificationGroupId
        self.notificationSettingsChatId = notificationSettingsChatId
        self.notificationSoundId = notificationSoundId
        self.removedNotificationIds = removedNotificationIds
        self.totalCount = totalCount
        self.type = type
    }
}

/// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
public struct UpdateActiveNotifications: Codable, Equatable {

    /// Lists of active notification groups
    public let groups: [NotificationGroup]


    public init(groups: [NotificationGroup]) {
        self.groups = groups
    }
}

/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
public struct UpdateHavePendingNotifications: Codable, Equatable {

    /// True, if there are some delayed notification updates, which will be sent soon
    public let haveDelayedNotifications: Bool

    /// True, if there can be some yet unreceived notifications, which are being fetched from the server
    public let haveUnreceivedNotifications: Bool


    public init(
        haveDelayedNotifications: Bool,
        haveUnreceivedNotifications: Bool
    ) {
        self.haveDelayedNotifications = haveDelayedNotifications
        self.haveUnreceivedNotifications = haveUnreceivedNotifications
    }
}

/// Some messages were deleted
public struct UpdateDeleteMessages: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
    public let fromCache: Bool

    /// True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
    public let isPermanent: Bool

    /// Identifiers of the deleted messages
    public let messageIds: [Int64]


    public init(
        chatId: Int64,
        fromCache: Bool,
        isPermanent: Bool,
        messageIds: [Int64]
    ) {
        self.chatId = chatId
        self.fromCache = fromCache
        self.isPermanent = isPermanent
        self.messageIds = messageIds
    }
}

/// A message sender activity in the chat has changed
public struct UpdateChatAction: Codable, Equatable {

    /// The action
    public let action: ChatAction

    /// Chat identifier
    public let chatId: Int64

    /// If not 0, a message thread identifier in which the action was performed
    public let messageThreadId: Int64

    /// Identifier of a message sender performing the action
    public let senderId: MessageSender


    public init(
        action: ChatAction,
        chatId: Int64,
        messageThreadId: Int64,
        senderId: MessageSender
    ) {
        self.action = action
        self.chatId = chatId
        self.messageThreadId = messageThreadId
        self.senderId = senderId
    }
}

/// The user went online or offline
public struct UpdateUserStatus: Codable, Equatable {

    /// New status of the user
    public let status: UserStatus

    /// User identifier
    public let userId: Int64


    public init(
        status: UserStatus,
        userId: Int64
    ) {
        self.status = status
        self.userId = userId
    }
}

/// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
public struct UpdateUser: Codable, Equatable {

    /// New data about the user
    public let user: User


    public init(user: User) {
        self.user = user
    }
}

/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
public struct UpdateBasicGroup: Codable, Equatable {

    /// New data about the group
    public let basicGroup: BasicGroup


    public init(basicGroup: BasicGroup) {
        self.basicGroup = basicGroup
    }
}

/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
public struct UpdateSupergroup: Codable, Equatable {

    /// New data about the supergroup
    public let supergroup: Supergroup


    public init(supergroup: Supergroup) {
        self.supergroup = supergroup
    }
}

/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
public struct UpdateSecretChat: Codable, Equatable {

    /// New data about the secret chat
    public let secretChat: SecretChat


    public init(secretChat: SecretChat) {
        self.secretChat = secretChat
    }
}

/// Some data in userFullInfo has been changed
public struct UpdateUserFullInfo: Codable, Equatable {

    /// New full information about the user
    public let userFullInfo: UserFullInfo

    /// User identifier
    public let userId: Int64


    public init(
        userFullInfo: UserFullInfo,
        userId: Int64
    ) {
        self.userFullInfo = userFullInfo
        self.userId = userId
    }
}

/// Some data in basicGroupFullInfo has been changed
public struct UpdateBasicGroupFullInfo: Codable, Equatable {

    /// New full information about the group
    public let basicGroupFullInfo: BasicGroupFullInfo

    /// Identifier of a basic group
    public let basicGroupId: Int64


    public init(
        basicGroupFullInfo: BasicGroupFullInfo,
        basicGroupId: Int64
    ) {
        self.basicGroupFullInfo = basicGroupFullInfo
        self.basicGroupId = basicGroupId
    }
}

/// Some data in supergroupFullInfo has been changed
public struct UpdateSupergroupFullInfo: Codable, Equatable {

    /// New full information about the supergroup
    public let supergroupFullInfo: SupergroupFullInfo

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64


    public init(
        supergroupFullInfo: SupergroupFullInfo,
        supergroupId: Int64
    ) {
        self.supergroupFullInfo = supergroupFullInfo
        self.supergroupId = supergroupId
    }
}

/// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
public struct UpdateServiceNotification: Codable, Equatable {

    /// Notification content
    public let content: MessageContent

    /// Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
    public let type: String


    public init(
        content: MessageContent,
        type: String
    ) {
        self.content = content
        self.type = type
    }
}

/// Information about a file was updated
public struct UpdateFile: Codable, Equatable {

    /// New data about the file
    public let file: File


    public init(file: File) {
        self.file = file
    }
}

/// The file generation process needs to be started by the application
public struct UpdateFileGenerationStart: Codable, Equatable {

    /// String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
    public let conversion: String

    /// The path to a file that must be created and where the new file is generated
    public let destinationPath: String

    /// Unique identifier for the generation process
    public let generationId: TdInt64

    /// The path to a file from which a new file is generated; may be empty
    public let originalPath: String


    public init(
        conversion: String,
        destinationPath: String,
        generationId: TdInt64,
        originalPath: String
    ) {
        self.conversion = conversion
        self.destinationPath = destinationPath
        self.generationId = generationId
        self.originalPath = originalPath
    }
}

/// File generation is no longer needed
public struct UpdateFileGenerationStop: Codable, Equatable {

    /// Unique identifier for the generation process
    public let generationId: TdInt64


    public init(generationId: TdInt64) {
        self.generationId = generationId
    }
}

/// The state of the file download list has changed
public struct UpdateFileDownloads: Codable, Equatable {

    /// Total downloaded size of files in the file download list, in bytes
    public let downloadedSize: Int64

    /// Total number of files in the file download list
    public let totalCount: Int

    /// Total size of files in the file download list, in bytes
    public let totalSize: Int64


    public init(
        downloadedSize: Int64,
        totalCount: Int,
        totalSize: Int64
    ) {
        self.downloadedSize = downloadedSize
        self.totalCount = totalCount
        self.totalSize = totalSize
    }
}

/// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
public struct UpdateFileAddedToDownloads: Codable, Equatable {

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// The added file download
    public let fileDownload: FileDownload


    public init(
        counts: DownloadedFileCounts,
        fileDownload: FileDownload
    ) {
        self.counts = counts
        self.fileDownload = fileDownload
    }
}

/// A file download was changed. This update is sent only after file download list is loaded for the first time
public struct UpdateFileDownload: Codable, Equatable {

    /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
    public let completeDate: Int

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// File identifier
    public let fileId: Int

    /// True, if downloading of the file is paused
    public let isPaused: Bool


    public init(
        completeDate: Int,
        counts: DownloadedFileCounts,
        fileId: Int,
        isPaused: Bool
    ) {
        self.completeDate = completeDate
        self.counts = counts
        self.fileId = fileId
        self.isPaused = isPaused
    }
}

/// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
public struct UpdateFileRemovedFromDownloads: Codable, Equatable {

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// File identifier
    public let fileId: Int


    public init(
        counts: DownloadedFileCounts,
        fileId: Int
    ) {
        self.counts = counts
        self.fileId = fileId
    }
}

/// New call was created or information about a call was updated
public struct UpdateCall: Codable, Equatable {

    /// New data about a call
    public let call: Call


    public init(call: Call) {
        self.call = call
    }
}

/// Information about a group call was updated
public struct UpdateGroupCall: Codable, Equatable {

    /// New data about a group call
    public let groupCall: GroupCall


    public init(groupCall: GroupCall) {
        self.groupCall = groupCall
    }
}

/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
public struct UpdateGroupCallParticipant: Codable, Equatable {

    /// Identifier of group call
    public let groupCallId: Int

    /// New data about a participant
    public let participant: GroupCallParticipant


    public init(
        groupCallId: Int,
        participant: GroupCallParticipant
    ) {
        self.groupCallId = groupCallId
        self.participant = participant
    }
}

/// New call signaling data arrived
public struct UpdateNewCallSignalingData: Codable, Equatable {

    /// The call identifier
    public let callId: Int

    /// The data
    public let data: Data


    public init(
        callId: Int,
        data: Data
    ) {
        self.callId = callId
        self.data = data
    }
}

/// Some privacy setting rules have been changed
public struct UpdateUserPrivacySettingRules: Codable, Equatable {

    /// New privacy rules
    public let rules: UserPrivacySettingRules

    /// The privacy setting
    public let setting: UserPrivacySetting


    public init(
        rules: UserPrivacySettingRules,
        setting: UserPrivacySetting
    ) {
        self.rules = rules
        self.setting = setting
    }
}

/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
public struct UpdateUnreadMessageCount: Codable, Equatable {

    /// The chat list with changed number of unread messages
    public let chatList: ChatList

    /// Total number of unread messages
    public let unreadCount: Int

    /// Total number of unread messages in unmuted chats
    public let unreadUnmutedCount: Int


    public init(
        chatList: ChatList,
        unreadCount: Int,
        unreadUnmutedCount: Int
    ) {
        self.chatList = chatList
        self.unreadCount = unreadCount
        self.unreadUnmutedCount = unreadUnmutedCount
    }
}

/// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
public struct UpdateUnreadChatCount: Codable, Equatable {

    /// The chat list with changed number of unread messages
    public let chatList: ChatList

    /// Total number of chats marked as unread
    public let markedAsUnreadCount: Int

    /// Total number of unmuted chats marked as unread
    public let markedAsUnreadUnmutedCount: Int

    /// Approximate total number of chats in the chat list
    public let totalCount: Int

    /// Total number of unread chats
    public let unreadCount: Int

    /// Total number of unread unmuted chats
    public let unreadUnmutedCount: Int


    public init(
        chatList: ChatList,
        markedAsUnreadCount: Int,
        markedAsUnreadUnmutedCount: Int,
        totalCount: Int,
        unreadCount: Int,
        unreadUnmutedCount: Int
    ) {
        self.chatList = chatList
        self.markedAsUnreadCount = markedAsUnreadCount
        self.markedAsUnreadUnmutedCount = markedAsUnreadUnmutedCount
        self.totalCount = totalCount
        self.unreadCount = unreadCount
        self.unreadUnmutedCount = unreadUnmutedCount
    }
}

/// An option changed its value
public struct UpdateOption: Codable, Equatable {

    /// The option name
    public let name: String

    /// The new option value
    public let value: OptionValue


    public init(
        name: String,
        value: OptionValue
    ) {
        self.name = name
        self.value = value
    }
}

/// A sticker set has changed
public struct UpdateStickerSet: Codable, Equatable {

    /// The sticker set
    public let stickerSet: StickerSet


    public init(stickerSet: StickerSet) {
        self.stickerSet = stickerSet
    }
}

/// The list of installed sticker sets was updated
public struct UpdateInstalledStickerSets: Codable, Equatable {

    /// True, if the list of installed mask sticker sets was updated
    public let isMasks: Bool

    /// The new list of installed ordinary sticker sets
    public let stickerSetIds: [TdInt64]


    public init(
        isMasks: Bool,
        stickerSetIds: [TdInt64]
    ) {
        self.isMasks = isMasks
        self.stickerSetIds = stickerSetIds
    }
}

/// The list of trending sticker sets was updated or some of them were viewed
public struct UpdateTrendingStickerSets: Codable, Equatable {

    /// The prefix of the list of trending sticker sets with the newest trending sticker sets
    public let stickerSets: TrendingStickerSets


    public init(stickerSets: TrendingStickerSets) {
        self.stickerSets = stickerSets
    }
}

/// The list of recently used stickers was updated
public struct UpdateRecentStickers: Codable, Equatable {

    /// True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
    public let isAttached: Bool

    /// The new list of file identifiers of recently used stickers
    public let stickerIds: [Int]


    public init(
        isAttached: Bool,
        stickerIds: [Int]
    ) {
        self.isAttached = isAttached
        self.stickerIds = stickerIds
    }
}

/// The list of favorite stickers was updated
public struct UpdateFavoriteStickers: Codable, Equatable {

    /// The new list of file identifiers of favorite stickers
    public let stickerIds: [Int]


    public init(stickerIds: [Int]) {
        self.stickerIds = stickerIds
    }
}

/// The list of saved animations was updated
public struct UpdateSavedAnimations: Codable, Equatable {

    /// The new list of file identifiers of saved animations
    public let animationIds: [Int]


    public init(animationIds: [Int]) {
        self.animationIds = animationIds
    }
}

/// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
public struct UpdateSavedNotificationSounds: Codable, Equatable {

    /// The new list of identifiers of saved notification sounds
    public let notificationSoundIds: [TdInt64]


    public init(notificationSoundIds: [TdInt64]) {
        self.notificationSoundIds = notificationSoundIds
    }
}

/// The selected background has changed
public struct UpdateSelectedBackground: Codable, Equatable {

    /// The new selected background; may be null
    public let background: Background?

    /// True, if background for dark theme has changed
    public let forDarkTheme: Bool


    public init(
        background: Background?,
        forDarkTheme: Bool
    ) {
        self.background = background
        self.forDarkTheme = forDarkTheme
    }
}

/// The list of available chat themes has changed
public struct UpdateChatThemes: Codable, Equatable {

    /// The new list of chat themes
    public let chatThemes: [ChatTheme]


    public init(chatThemes: [ChatTheme]) {
        self.chatThemes = chatThemes
    }
}

/// Some language pack strings have been updated
public struct UpdateLanguagePackStrings: Codable, Equatable {

    /// Identifier of the updated language pack
    public let languagePackId: String

    /// Localization target to which the language pack belongs
    public let localizationTarget: String

    /// List of changed language pack strings
    public let strings: [LanguagePackString]


    public init(
        languagePackId: String,
        localizationTarget: String,
        strings: [LanguagePackString]
    ) {
        self.languagePackId = languagePackId
        self.localizationTarget = localizationTarget
        self.strings = strings
    }
}

/// The connection state has changed. This update must be used only to show a human-readable description of the connection state
public struct UpdateConnectionState: Codable, Equatable {

    /// The new connection state
    public let state: ConnectionState


    public init(state: ConnectionState) {
        self.state = state
    }
}

/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
public struct UpdateTermsOfService: Codable, Equatable {

    /// The new terms of service
    public let termsOfService: TermsOfService

    /// Identifier of the terms of service
    public let termsOfServiceId: String


    public init(
        termsOfService: TermsOfService,
        termsOfServiceId: String
    ) {
        self.termsOfService = termsOfService
        self.termsOfServiceId = termsOfServiceId
    }
}

/// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
public struct UpdateUsersNearby: Codable, Equatable {

    /// The new list of users nearby
    public let usersNearby: [ChatNearby]


    public init(usersNearby: [ChatNearby]) {
        self.usersNearby = usersNearby
    }
}

/// The list of bots added to attachment menu has changed
public struct UpdateAttachmentMenuBots: Codable, Equatable {

    /// The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen
    public let bots: [AttachmentMenuBot]


    public init(bots: [AttachmentMenuBot]) {
        self.bots = bots
    }
}

/// A message was sent by an opened Web App, so the Web App needs to be closed
public struct UpdateWebAppMessageSent: Codable, Equatable {

    /// Identifier of Web App launch
    public let webAppLaunchId: TdInt64


    public init(webAppLaunchId: TdInt64) {
        self.webAppLaunchId = webAppLaunchId
    }
}

/// The list of supported reactions has changed
public struct UpdateReactions: Codable, Equatable {

    /// The new list of supported reactions
    public let reactions: [Reaction]


    public init(reactions: [Reaction]) {
        self.reactions = reactions
    }
}

/// The list of supported dice emojis has changed
public struct UpdateDiceEmojis: Codable, Equatable {

    /// The new list of supported dice emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

/// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
public struct UpdateAnimatedEmojiMessageClicked: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The animated sticker to be played
    public let sticker: Sticker


    public init(
        chatId: Int64,
        messageId: Int64,
        sticker: Sticker
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.sticker = sticker
    }
}

/// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
public struct UpdateAnimationSearchParameters: Codable, Equatable {

    /// The new list of emojis suggested for searching
    public let emojis: [String]

    /// Name of the animation search provider
    public let provider: String


    public init(
        emojis: [String],
        provider: String
    ) {
        self.emojis = emojis
        self.provider = provider
    }
}

/// The list of suggested to the user actions has changed
public struct UpdateSuggestedActions: Codable, Equatable {

    /// Added suggested actions
    public let addedActions: [SuggestedAction]

    /// Removed suggested actions
    public let removedActions: [SuggestedAction]


    public init(
        addedActions: [SuggestedAction],
        removedActions: [SuggestedAction]
    ) {
        self.addedActions = addedActions
        self.removedActions = removedActions
    }
}

/// A new incoming inline query; for bots only
public struct UpdateNewInlineQuery: Codable, Equatable {

    /// The type of the chat from which the query originated; may be null if unknown
    public let chatType: ChatType?

    /// Unique query identifier
    public let id: TdInt64

    /// Offset of the first entry to return
    public let offset: String

    /// Text of the query
    public let query: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User location; may be null
    public let userLocation: Location?


    public init(
        chatType: ChatType?,
        id: TdInt64,
        offset: String,
        query: String,
        senderUserId: Int64,
        userLocation: Location?
    ) {
        self.chatType = chatType
        self.id = id
        self.offset = offset
        self.query = query
        self.senderUserId = senderUserId
        self.userLocation = userLocation
    }
}

/// The user has chosen a result of an inline query; for bots only
public struct UpdateNewChosenInlineResult: Codable, Equatable {

    /// Identifier of the sent inline message, if known
    public let inlineMessageId: String

    /// Text of the query
    public let query: String

    /// Identifier of the chosen result
    public let resultId: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User location; may be null
    public let userLocation: Location?


    public init(
        inlineMessageId: String,
        query: String,
        resultId: String,
        senderUserId: Int64,
        userLocation: Location?
    ) {
        self.inlineMessageId = inlineMessageId
        self.query = query
        self.resultId = resultId
        self.senderUserId = senderUserId
        self.userLocation = userLocation
    }
}

/// A new incoming callback query; for bots only
public struct UpdateNewCallbackQuery: Codable, Equatable {

    /// Identifier of the chat where the query was sent
    public let chatId: Int64

    /// Identifier that uniquely corresponds to the chat to which the message was sent
    public let chatInstance: TdInt64

    /// Unique query identifier
    public let id: TdInt64

    /// Identifier of the message from which the query originated
    public let messageId: Int64

    /// Query payload
    public let payload: CallbackQueryPayload

    /// Identifier of the user who sent the query
    public let senderUserId: Int64


    public init(
        chatId: Int64,
        chatInstance: TdInt64,
        id: TdInt64,
        messageId: Int64,
        payload: CallbackQueryPayload,
        senderUserId: Int64
    ) {
        self.chatId = chatId
        self.chatInstance = chatInstance
        self.id = id
        self.messageId = messageId
        self.payload = payload
        self.senderUserId = senderUserId
    }
}

/// A new incoming callback query from a message sent via a bot; for bots only
public struct UpdateNewInlineCallbackQuery: Codable, Equatable {

    /// An identifier uniquely corresponding to the chat a message was sent to
    public let chatInstance: TdInt64

    /// Unique query identifier
    public let id: TdInt64

    /// Identifier of the inline message from which the query originated
    public let inlineMessageId: String

    /// Query payload
    public let payload: CallbackQueryPayload

    /// Identifier of the user who sent the query
    public let senderUserId: Int64


    public init(
        chatInstance: TdInt64,
        id: TdInt64,
        inlineMessageId: String,
        payload: CallbackQueryPayload,
        senderUserId: Int64
    ) {
        self.chatInstance = chatInstance
        self.id = id
        self.inlineMessageId = inlineMessageId
        self.payload = payload
        self.senderUserId = senderUserId
    }
}

/// A new incoming shipping query; for bots only. Only for invoices with flexible price
public struct UpdateNewShippingQuery: Codable, Equatable {

    /// Unique query identifier
    public let id: TdInt64

    /// Invoice payload
    public let invoicePayload: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User shipping address
    public let shippingAddress: Address


    public init(
        id: TdInt64,
        invoicePayload: String,
        senderUserId: Int64,
        shippingAddress: Address
    ) {
        self.id = id
        self.invoicePayload = invoicePayload
        self.senderUserId = senderUserId
        self.shippingAddress = shippingAddress
    }
}

/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
public struct UpdateNewPreCheckoutQuery: Codable, Equatable {

    /// Currency for the product price
    public let currency: String

    /// Unique query identifier
    public let id: TdInt64

    /// Invoice payload
    public let invoicePayload: Data

    /// Information about the order; may be null
    public let orderInfo: OrderInfo?

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// Identifier of a shipping option chosen by the user; may be empty if not applicable
    public let shippingOptionId: String

    /// Total price for the product, in the smallest units of the currency
    public let totalAmount: Int64


    public init(
        currency: String,
        id: TdInt64,
        invoicePayload: Data,
        orderInfo: OrderInfo?,
        senderUserId: Int64,
        shippingOptionId: String,
        totalAmount: Int64
    ) {
        self.currency = currency
        self.id = id
        self.invoicePayload = invoicePayload
        self.orderInfo = orderInfo
        self.senderUserId = senderUserId
        self.shippingOptionId = shippingOptionId
        self.totalAmount = totalAmount
    }
}

/// A new incoming event; for bots only
public struct UpdateNewCustomEvent: Codable, Equatable {

    /// A JSON-serialized event
    public let event: String


    public init(event: String) {
        self.event = event
    }
}

/// A new incoming query; for bots only
public struct UpdateNewCustomQuery: Codable, Equatable {

    /// JSON-serialized query data
    public let data: String

    /// The query identifier
    public let id: TdInt64

    /// Query timeout
    public let timeout: Int


    public init(
        data: String,
        id: TdInt64,
        timeout: Int
    ) {
        self.data = data
        self.id = id
        self.timeout = timeout
    }
}

/// A poll was updated; for bots only
public struct UpdatePoll: Codable, Equatable {

    /// New data about the poll
    public let poll: Poll


    public init(poll: Poll) {
        self.poll = poll
    }
}

/// A user changed the answer to a poll; for bots only
public struct UpdatePollAnswer: Codable, Equatable {

    /// 0-based identifiers of answer options, chosen by the user
    public let optionIds: [Int]

    /// Unique poll identifier
    public let pollId: TdInt64

    /// The user, who changed the answer to the poll
    public let userId: Int64


    public init(
        optionIds: [Int],
        pollId: TdInt64,
        userId: Int64
    ) {
        self.optionIds = optionIds
        self.pollId = pollId
        self.userId = userId
    }
}

/// User rights changed in a chat; for bots only
public struct UpdateChatMember: Codable, Equatable {

    /// Identifier of the user, changing the rights
    public let actorUserId: Int64

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the user rights was changed
    public let date: Int

    /// If user has joined the chat using an invite link, the invite link; may be null
    public let inviteLink: ChatInviteLink?

    /// New chat member
    public let newChatMember: ChatMember

    /// Previous chat member
    public let oldChatMember: ChatMember


    public init(
        actorUserId: Int64,
        chatId: Int64,
        date: Int,
        inviteLink: ChatInviteLink?,
        newChatMember: ChatMember,
        oldChatMember: ChatMember
    ) {
        self.actorUserId = actorUserId
        self.chatId = chatId
        self.date = date
        self.inviteLink = inviteLink
        self.newChatMember = newChatMember
        self.oldChatMember = oldChatMember
    }
}

/// A user sent a join request to a chat; for bots only
public struct UpdateNewChatJoinRequest: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64

    /// The invite link, which was used to send join request; may be null
    public let inviteLink: ChatInviteLink?

    /// Join request
    public let request: ChatJoinRequest


    public init(
        chatId: Int64,
        inviteLink: ChatInviteLink?,
        request: ChatJoinRequest
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
        self.request = request
    }
}

