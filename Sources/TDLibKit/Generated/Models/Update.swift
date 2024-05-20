//
//  Update.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains notifications about data changes
public indirect enum Update: Codable, Equatable, Hashable {

    /// The user authorization state has changed
    case updateAuthorizationState(UpdateAuthorizationState)

    /// A new message was received; can also be an outgoing message
    case updateNewMessage(UpdateNewMessage)

    /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
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

    /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer
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

    /// Chat accent colors have changed
    case updateChatAccentColors(UpdateChatAccentColors)

    /// Chat permissions were changed
    case updateChatPermissions(UpdateChatPermissions)

    /// The last message of a chat was changed
    case updateChatLastMessage(UpdateChatLastMessage)

    /// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update
    case updateChatPosition(UpdateChatPosition)

    /// A chat was added to a chat list
    case updateChatAddedToList(UpdateChatAddedToList)

    /// A chat was removed from a chat list
    case updateChatRemovedFromList(UpdateChatRemovedFromList)

    /// Incoming messages were read or the number of unread messages has been changed
    case updateChatReadInbox(UpdateChatReadInbox)

    /// Outgoing messages were read
    case updateChatReadOutbox(UpdateChatReadOutbox)

    /// The chat action bar was changed
    case updateChatActionBar(UpdateChatActionBar)

    /// The bar for managing business bot was changed in a chat
    case updateChatBusinessBotManageBar(UpdateChatBusinessBotManageBar)

    /// The chat available reactions were changed
    case updateChatAvailableReactions(UpdateChatAvailableReactions)

    /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
    case updateChatDraftMessage(UpdateChatDraftMessage)

    /// Chat emoji status has changed
    case updateChatEmojiStatus(UpdateChatEmojiStatus)

    /// The message sender that is selected to send messages in a chat has changed
    case updateChatMessageSender(UpdateChatMessageSender)

    /// The message auto-delete or self-destruct timer setting for a chat was changed
    case updateChatMessageAutoDeleteTime(UpdateChatMessageAutoDeleteTime)

    /// Notification settings for a chat were changed
    case updateChatNotificationSettings(UpdateChatNotificationSettings)

    /// The chat pending join requests were changed
    case updateChatPendingJoinRequests(UpdateChatPendingJoinRequests)

    /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
    case updateChatReplyMarkup(UpdateChatReplyMarkup)

    /// The chat background was changed
    case updateChatBackground(UpdateChatBackground)

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

    /// Translation of chat messages was enabled or disabled
    case updateChatIsTranslatable(UpdateChatIsTranslatable)

    /// A chat was marked as unread or was read
    case updateChatIsMarkedAsUnread(UpdateChatIsMarkedAsUnread)

    /// A chat default appearance has changed
    case updateChatViewAsTopics(UpdateChatViewAsTopics)

    /// A chat was blocked or unblocked
    case updateChatBlockList(UpdateChatBlockList)

    /// A chat's has_scheduled_messages field has changed
    case updateChatHasScheduledMessages(UpdateChatHasScheduledMessages)

    /// The list of chat folders or a chat folder has changed
    case updateChatFolders(UpdateChatFolders)

    /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it is sent just after the number of online users has changed
    case updateChatOnlineMemberCount(UpdateChatOnlineMemberCount)

    /// Basic information about a Saved Messages topic has changed. This update is guaranteed to come before the topic identifier is returned to the application
    case updateSavedMessagesTopic(UpdateSavedMessagesTopic)

    /// Number of Saved Messages topics has changed
    case updateSavedMessagesTopicCount(UpdateSavedMessagesTopicCount)

    /// Basic information about a quick reply shortcut has changed. This update is guaranteed to come before the quick shortcut name is returned to the application
    case updateQuickReplyShortcut(UpdateQuickReplyShortcut)

    /// A quick reply shortcut and all its messages were deleted
    case updateQuickReplyShortcutDeleted(UpdateQuickReplyShortcutDeleted)

    /// The list of quick reply shortcuts has changed
    case updateQuickReplyShortcuts(UpdateQuickReplyShortcuts)

    /// The list of quick reply shortcut messages has changed
    case updateQuickReplyShortcutMessages(UpdateQuickReplyShortcutMessages)

    /// Basic information about a topic in a forum chat was changed
    case updateForumTopicInfo(UpdateForumTopicInfo)

    /// Notification settings for some type of chats were updated
    case updateScopeNotificationSettings(UpdateScopeNotificationSettings)

    /// Notification settings for reactions were updated
    case updateReactionNotificationSettings(UpdateReactionNotificationSettings)

    /// A notification was changed
    case updateNotification(UpdateNotification)

    /// A list of active notifications in a notification group has changed
    case updateNotificationGroup(UpdateNotificationGroup)

    /// Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
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

    /// A story was changed
    case updateStory(UpdateStory)

    /// A story became inaccessible
    case updateStoryDeleted(UpdateStoryDeleted)

    /// A story has been successfully sent
    case updateStorySendSucceeded(UpdateStorySendSucceeded)

    /// A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update
    case updateStorySendFailed(UpdateStorySendFailed)

    /// The list of active stories posted by a specific chat has changed
    case updateChatActiveStories(UpdateChatActiveStories)

    /// Number of chats in a story list has changed
    case updateStoryListChatCount(UpdateStoryListChatCount)

    /// Story stealth mode settings have changed
    case updateStoryStealthMode(UpdateStoryStealthMode)

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

    /// The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
    case updateSavedNotificationSounds(UpdateSavedNotificationSounds)

    /// The default background has changed
    case updateDefaultBackground(UpdateDefaultBackground)

    /// The list of available chat themes has changed
    case updateChatThemes(UpdateChatThemes)

    /// The list of supported accent colors has changed
    case updateAccentColors(UpdateAccentColors)

    /// The list of supported accent colors for user profiles has changed
    case updateProfileAccentColors(UpdateProfileAccentColors)

    /// Some language pack strings have been updated
    case updateLanguagePackStrings(UpdateLanguagePackStrings)

    /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
    case updateConnectionState(UpdateConnectionState)

    /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
    case updateTermsOfService(UpdateTermsOfService)

    /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
    case updateUsersNearby(UpdateUsersNearby)

    /// The first unconfirmed session has changed
    case updateUnconfirmedSession(UpdateUnconfirmedSession)

    /// The list of bots added to attachment or side menu has changed
    case updateAttachmentMenuBots(UpdateAttachmentMenuBots)

    /// A message was sent by an opened Web App, so the Web App needs to be closed
    case updateWebAppMessageSent(UpdateWebAppMessageSent)

    /// The list of active emoji reactions has changed
    case updateActiveEmojiReactions(UpdateActiveEmojiReactions)

    /// The type of default reaction has changed
    case updateDefaultReactionType(UpdateDefaultReactionType)

    /// Tags used in Saved Messages or a Saved Messages topic have changed
    case updateSavedMessagesTags(UpdateSavedMessagesTags)

    /// The revenue earned from sponsored messages in a chat has changed. If chat revenue screen is opened, then getChatRevenueTransactions may be called to fetch new transactions
    case updateChatRevenueAmount

    /// The parameters of speech recognition without Telegram Premium subscription has changed
    case updateSpeechRecognitionTrial(UpdateSpeechRecognitionTrial)

    /// The list of supported dice emojis has changed
    case updateDiceEmojis(UpdateDiceEmojis)

    /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
    case updateAnimatedEmojiMessageClicked(UpdateAnimatedEmojiMessageClicked)

    /// The parameters of animation search through getOption("animation_search_bot_username") bot has changed
    case updateAnimationSearchParameters(UpdateAnimationSearchParameters)

    /// The list of suggested to the user actions has changed
    case updateSuggestedActions(UpdateSuggestedActions)

    /// Download or upload file speed for the user was limited, but it can be restored by subscription to Telegram Premium. The notification can be postponed until a being downloaded or uploaded file is visible to the user Use getOption("premium_download_speedup") or getOption("premium_upload_speedup") to get expected speedup after subscription to Telegram Premium
    case updateSpeedLimitNotification(UpdateSpeedLimitNotification)

    /// The list of contacts that had birthdays recently or will have birthday soon has changed
    case updateContactCloseBirthdays(UpdateContactCloseBirthdays)

    /// Autosave settings for some type of chats were updated
    case updateAutosaveSettings(UpdateAutosaveSettings)

    /// A business connection has changed; for bots only
    case updateBusinessConnection(UpdateBusinessConnection)

    /// A new message was added to a business account; for bots only
    case updateNewBusinessMessage(UpdateNewBusinessMessage)

    /// A message in a business account was edited; for bots only
    case updateBusinessMessageEdited(UpdateBusinessMessageEdited)

    /// Messages in a business account were deleted; for bots only
    case updateBusinessMessagesDeleted(UpdateBusinessMessagesDeleted)

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

    /// A chat boost has changed; for bots only
    case updateChatBoost(UpdateChatBoost)

    /// User changed its reactions on a message with public reactions; for bots only
    case updateMessageReaction(UpdateMessageReaction)

    /// Reactions added to a message with anonymous reactions have changed; for bots only
    case updateMessageReactions(UpdateMessageReactions)


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
        case updateChatAccentColors
        case updateChatPermissions
        case updateChatLastMessage
        case updateChatPosition
        case updateChatAddedToList
        case updateChatRemovedFromList
        case updateChatReadInbox
        case updateChatReadOutbox
        case updateChatActionBar
        case updateChatBusinessBotManageBar
        case updateChatAvailableReactions
        case updateChatDraftMessage
        case updateChatEmojiStatus
        case updateChatMessageSender
        case updateChatMessageAutoDeleteTime
        case updateChatNotificationSettings
        case updateChatPendingJoinRequests
        case updateChatReplyMarkup
        case updateChatBackground
        case updateChatTheme
        case updateChatUnreadMentionCount
        case updateChatUnreadReactionCount
        case updateChatVideoChat
        case updateChatDefaultDisableNotification
        case updateChatHasProtectedContent
        case updateChatIsTranslatable
        case updateChatIsMarkedAsUnread
        case updateChatViewAsTopics
        case updateChatBlockList
        case updateChatHasScheduledMessages
        case updateChatFolders
        case updateChatOnlineMemberCount
        case updateSavedMessagesTopic
        case updateSavedMessagesTopicCount
        case updateQuickReplyShortcut
        case updateQuickReplyShortcutDeleted
        case updateQuickReplyShortcuts
        case updateQuickReplyShortcutMessages
        case updateForumTopicInfo
        case updateScopeNotificationSettings
        case updateReactionNotificationSettings
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
        case updateStory
        case updateStoryDeleted
        case updateStorySendSucceeded
        case updateStorySendFailed
        case updateChatActiveStories
        case updateStoryListChatCount
        case updateStoryStealthMode
        case updateOption
        case updateStickerSet
        case updateInstalledStickerSets
        case updateTrendingStickerSets
        case updateRecentStickers
        case updateFavoriteStickers
        case updateSavedAnimations
        case updateSavedNotificationSounds
        case updateDefaultBackground
        case updateChatThemes
        case updateAccentColors
        case updateProfileAccentColors
        case updateLanguagePackStrings
        case updateConnectionState
        case updateTermsOfService
        case updateUsersNearby
        case updateUnconfirmedSession
        case updateAttachmentMenuBots
        case updateWebAppMessageSent
        case updateActiveEmojiReactions
        case updateDefaultReactionType
        case updateSavedMessagesTags
        case updateChatRevenueAmount
        case updateSpeechRecognitionTrial
        case updateDiceEmojis
        case updateAnimatedEmojiMessageClicked
        case updateAnimationSearchParameters
        case updateSuggestedActions
        case updateSpeedLimitNotification
        case updateContactCloseBirthdays
        case updateAutosaveSettings
        case updateBusinessConnection
        case updateNewBusinessMessage
        case updateBusinessMessageEdited
        case updateBusinessMessagesDeleted
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
        case updateChatBoost
        case updateMessageReaction
        case updateMessageReactions
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
        case .updateChatAccentColors:
            let value = try UpdateChatAccentColors(from: decoder)
            self = .updateChatAccentColors(value)
        case .updateChatPermissions:
            let value = try UpdateChatPermissions(from: decoder)
            self = .updateChatPermissions(value)
        case .updateChatLastMessage:
            let value = try UpdateChatLastMessage(from: decoder)
            self = .updateChatLastMessage(value)
        case .updateChatPosition:
            let value = try UpdateChatPosition(from: decoder)
            self = .updateChatPosition(value)
        case .updateChatAddedToList:
            let value = try UpdateChatAddedToList(from: decoder)
            self = .updateChatAddedToList(value)
        case .updateChatRemovedFromList:
            let value = try UpdateChatRemovedFromList(from: decoder)
            self = .updateChatRemovedFromList(value)
        case .updateChatReadInbox:
            let value = try UpdateChatReadInbox(from: decoder)
            self = .updateChatReadInbox(value)
        case .updateChatReadOutbox:
            let value = try UpdateChatReadOutbox(from: decoder)
            self = .updateChatReadOutbox(value)
        case .updateChatActionBar:
            let value = try UpdateChatActionBar(from: decoder)
            self = .updateChatActionBar(value)
        case .updateChatBusinessBotManageBar:
            let value = try UpdateChatBusinessBotManageBar(from: decoder)
            self = .updateChatBusinessBotManageBar(value)
        case .updateChatAvailableReactions:
            let value = try UpdateChatAvailableReactions(from: decoder)
            self = .updateChatAvailableReactions(value)
        case .updateChatDraftMessage:
            let value = try UpdateChatDraftMessage(from: decoder)
            self = .updateChatDraftMessage(value)
        case .updateChatEmojiStatus:
            let value = try UpdateChatEmojiStatus(from: decoder)
            self = .updateChatEmojiStatus(value)
        case .updateChatMessageSender:
            let value = try UpdateChatMessageSender(from: decoder)
            self = .updateChatMessageSender(value)
        case .updateChatMessageAutoDeleteTime:
            let value = try UpdateChatMessageAutoDeleteTime(from: decoder)
            self = .updateChatMessageAutoDeleteTime(value)
        case .updateChatNotificationSettings:
            let value = try UpdateChatNotificationSettings(from: decoder)
            self = .updateChatNotificationSettings(value)
        case .updateChatPendingJoinRequests:
            let value = try UpdateChatPendingJoinRequests(from: decoder)
            self = .updateChatPendingJoinRequests(value)
        case .updateChatReplyMarkup:
            let value = try UpdateChatReplyMarkup(from: decoder)
            self = .updateChatReplyMarkup(value)
        case .updateChatBackground:
            let value = try UpdateChatBackground(from: decoder)
            self = .updateChatBackground(value)
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
        case .updateChatIsTranslatable:
            let value = try UpdateChatIsTranslatable(from: decoder)
            self = .updateChatIsTranslatable(value)
        case .updateChatIsMarkedAsUnread:
            let value = try UpdateChatIsMarkedAsUnread(from: decoder)
            self = .updateChatIsMarkedAsUnread(value)
        case .updateChatViewAsTopics:
            let value = try UpdateChatViewAsTopics(from: decoder)
            self = .updateChatViewAsTopics(value)
        case .updateChatBlockList:
            let value = try UpdateChatBlockList(from: decoder)
            self = .updateChatBlockList(value)
        case .updateChatHasScheduledMessages:
            let value = try UpdateChatHasScheduledMessages(from: decoder)
            self = .updateChatHasScheduledMessages(value)
        case .updateChatFolders:
            let value = try UpdateChatFolders(from: decoder)
            self = .updateChatFolders(value)
        case .updateChatOnlineMemberCount:
            let value = try UpdateChatOnlineMemberCount(from: decoder)
            self = .updateChatOnlineMemberCount(value)
        case .updateSavedMessagesTopic:
            let value = try UpdateSavedMessagesTopic(from: decoder)
            self = .updateSavedMessagesTopic(value)
        case .updateSavedMessagesTopicCount:
            let value = try UpdateSavedMessagesTopicCount(from: decoder)
            self = .updateSavedMessagesTopicCount(value)
        case .updateQuickReplyShortcut:
            let value = try UpdateQuickReplyShortcut(from: decoder)
            self = .updateQuickReplyShortcut(value)
        case .updateQuickReplyShortcutDeleted:
            let value = try UpdateQuickReplyShortcutDeleted(from: decoder)
            self = .updateQuickReplyShortcutDeleted(value)
        case .updateQuickReplyShortcuts:
            let value = try UpdateQuickReplyShortcuts(from: decoder)
            self = .updateQuickReplyShortcuts(value)
        case .updateQuickReplyShortcutMessages:
            let value = try UpdateQuickReplyShortcutMessages(from: decoder)
            self = .updateQuickReplyShortcutMessages(value)
        case .updateForumTopicInfo:
            let value = try UpdateForumTopicInfo(from: decoder)
            self = .updateForumTopicInfo(value)
        case .updateScopeNotificationSettings:
            let value = try UpdateScopeNotificationSettings(from: decoder)
            self = .updateScopeNotificationSettings(value)
        case .updateReactionNotificationSettings:
            let value = try UpdateReactionNotificationSettings(from: decoder)
            self = .updateReactionNotificationSettings(value)
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
        case .updateStory:
            let value = try UpdateStory(from: decoder)
            self = .updateStory(value)
        case .updateStoryDeleted:
            let value = try UpdateStoryDeleted(from: decoder)
            self = .updateStoryDeleted(value)
        case .updateStorySendSucceeded:
            let value = try UpdateStorySendSucceeded(from: decoder)
            self = .updateStorySendSucceeded(value)
        case .updateStorySendFailed:
            let value = try UpdateStorySendFailed(from: decoder)
            self = .updateStorySendFailed(value)
        case .updateChatActiveStories:
            let value = try UpdateChatActiveStories(from: decoder)
            self = .updateChatActiveStories(value)
        case .updateStoryListChatCount:
            let value = try UpdateStoryListChatCount(from: decoder)
            self = .updateStoryListChatCount(value)
        case .updateStoryStealthMode:
            let value = try UpdateStoryStealthMode(from: decoder)
            self = .updateStoryStealthMode(value)
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
        case .updateDefaultBackground:
            let value = try UpdateDefaultBackground(from: decoder)
            self = .updateDefaultBackground(value)
        case .updateChatThemes:
            let value = try UpdateChatThemes(from: decoder)
            self = .updateChatThemes(value)
        case .updateAccentColors:
            let value = try UpdateAccentColors(from: decoder)
            self = .updateAccentColors(value)
        case .updateProfileAccentColors:
            let value = try UpdateProfileAccentColors(from: decoder)
            self = .updateProfileAccentColors(value)
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
        case .updateUnconfirmedSession:
            let value = try UpdateUnconfirmedSession(from: decoder)
            self = .updateUnconfirmedSession(value)
        case .updateAttachmentMenuBots:
            let value = try UpdateAttachmentMenuBots(from: decoder)
            self = .updateAttachmentMenuBots(value)
        case .updateWebAppMessageSent:
            let value = try UpdateWebAppMessageSent(from: decoder)
            self = .updateWebAppMessageSent(value)
        case .updateActiveEmojiReactions:
            let value = try UpdateActiveEmojiReactions(from: decoder)
            self = .updateActiveEmojiReactions(value)
        case .updateDefaultReactionType:
            let value = try UpdateDefaultReactionType(from: decoder)
            self = .updateDefaultReactionType(value)
        case .updateSavedMessagesTags:
            let value = try UpdateSavedMessagesTags(from: decoder)
            self = .updateSavedMessagesTags(value)
        case .updateChatRevenueAmount:
            self = .updateChatRevenueAmount
        case .updateSpeechRecognitionTrial:
            let value = try UpdateSpeechRecognitionTrial(from: decoder)
            self = .updateSpeechRecognitionTrial(value)
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
        case .updateSpeedLimitNotification:
            let value = try UpdateSpeedLimitNotification(from: decoder)
            self = .updateSpeedLimitNotification(value)
        case .updateContactCloseBirthdays:
            let value = try UpdateContactCloseBirthdays(from: decoder)
            self = .updateContactCloseBirthdays(value)
        case .updateAutosaveSettings:
            let value = try UpdateAutosaveSettings(from: decoder)
            self = .updateAutosaveSettings(value)
        case .updateBusinessConnection:
            let value = try UpdateBusinessConnection(from: decoder)
            self = .updateBusinessConnection(value)
        case .updateNewBusinessMessage:
            let value = try UpdateNewBusinessMessage(from: decoder)
            self = .updateNewBusinessMessage(value)
        case .updateBusinessMessageEdited:
            let value = try UpdateBusinessMessageEdited(from: decoder)
            self = .updateBusinessMessageEdited(value)
        case .updateBusinessMessagesDeleted:
            let value = try UpdateBusinessMessagesDeleted(from: decoder)
            self = .updateBusinessMessagesDeleted(value)
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
        case .updateChatBoost:
            let value = try UpdateChatBoost(from: decoder)
            self = .updateChatBoost(value)
        case .updateMessageReaction:
            let value = try UpdateMessageReaction(from: decoder)
            self = .updateMessageReaction(value)
        case .updateMessageReactions:
            let value = try UpdateMessageReactions(from: decoder)
            self = .updateMessageReactions(value)
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
        case .updateChatAccentColors(let value):
            try container.encode(Kind.updateChatAccentColors, forKey: .type)
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
        case .updateChatAddedToList(let value):
            try container.encode(Kind.updateChatAddedToList, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatRemovedFromList(let value):
            try container.encode(Kind.updateChatRemovedFromList, forKey: .type)
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
        case .updateChatBusinessBotManageBar(let value):
            try container.encode(Kind.updateChatBusinessBotManageBar, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatAvailableReactions(let value):
            try container.encode(Kind.updateChatAvailableReactions, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatDraftMessage(let value):
            try container.encode(Kind.updateChatDraftMessage, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatEmojiStatus(let value):
            try container.encode(Kind.updateChatEmojiStatus, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatMessageSender(let value):
            try container.encode(Kind.updateChatMessageSender, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatMessageAutoDeleteTime(let value):
            try container.encode(Kind.updateChatMessageAutoDeleteTime, forKey: .type)
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
        case .updateChatBackground(let value):
            try container.encode(Kind.updateChatBackground, forKey: .type)
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
        case .updateChatIsTranslatable(let value):
            try container.encode(Kind.updateChatIsTranslatable, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatIsMarkedAsUnread(let value):
            try container.encode(Kind.updateChatIsMarkedAsUnread, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatViewAsTopics(let value):
            try container.encode(Kind.updateChatViewAsTopics, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatBlockList(let value):
            try container.encode(Kind.updateChatBlockList, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatHasScheduledMessages(let value):
            try container.encode(Kind.updateChatHasScheduledMessages, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatFolders(let value):
            try container.encode(Kind.updateChatFolders, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatOnlineMemberCount(let value):
            try container.encode(Kind.updateChatOnlineMemberCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateSavedMessagesTopic(let value):
            try container.encode(Kind.updateSavedMessagesTopic, forKey: .type)
            try value.encode(to: encoder)
        case .updateSavedMessagesTopicCount(let value):
            try container.encode(Kind.updateSavedMessagesTopicCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateQuickReplyShortcut(let value):
            try container.encode(Kind.updateQuickReplyShortcut, forKey: .type)
            try value.encode(to: encoder)
        case .updateQuickReplyShortcutDeleted(let value):
            try container.encode(Kind.updateQuickReplyShortcutDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .updateQuickReplyShortcuts(let value):
            try container.encode(Kind.updateQuickReplyShortcuts, forKey: .type)
            try value.encode(to: encoder)
        case .updateQuickReplyShortcutMessages(let value):
            try container.encode(Kind.updateQuickReplyShortcutMessages, forKey: .type)
            try value.encode(to: encoder)
        case .updateForumTopicInfo(let value):
            try container.encode(Kind.updateForumTopicInfo, forKey: .type)
            try value.encode(to: encoder)
        case .updateScopeNotificationSettings(let value):
            try container.encode(Kind.updateScopeNotificationSettings, forKey: .type)
            try value.encode(to: encoder)
        case .updateReactionNotificationSettings(let value):
            try container.encode(Kind.updateReactionNotificationSettings, forKey: .type)
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
        case .updateStory(let value):
            try container.encode(Kind.updateStory, forKey: .type)
            try value.encode(to: encoder)
        case .updateStoryDeleted(let value):
            try container.encode(Kind.updateStoryDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .updateStorySendSucceeded(let value):
            try container.encode(Kind.updateStorySendSucceeded, forKey: .type)
            try value.encode(to: encoder)
        case .updateStorySendFailed(let value):
            try container.encode(Kind.updateStorySendFailed, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatActiveStories(let value):
            try container.encode(Kind.updateChatActiveStories, forKey: .type)
            try value.encode(to: encoder)
        case .updateStoryListChatCount(let value):
            try container.encode(Kind.updateStoryListChatCount, forKey: .type)
            try value.encode(to: encoder)
        case .updateStoryStealthMode(let value):
            try container.encode(Kind.updateStoryStealthMode, forKey: .type)
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
        case .updateDefaultBackground(let value):
            try container.encode(Kind.updateDefaultBackground, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatThemes(let value):
            try container.encode(Kind.updateChatThemes, forKey: .type)
            try value.encode(to: encoder)
        case .updateAccentColors(let value):
            try container.encode(Kind.updateAccentColors, forKey: .type)
            try value.encode(to: encoder)
        case .updateProfileAccentColors(let value):
            try container.encode(Kind.updateProfileAccentColors, forKey: .type)
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
        case .updateUnconfirmedSession(let value):
            try container.encode(Kind.updateUnconfirmedSession, forKey: .type)
            try value.encode(to: encoder)
        case .updateAttachmentMenuBots(let value):
            try container.encode(Kind.updateAttachmentMenuBots, forKey: .type)
            try value.encode(to: encoder)
        case .updateWebAppMessageSent(let value):
            try container.encode(Kind.updateWebAppMessageSent, forKey: .type)
            try value.encode(to: encoder)
        case .updateActiveEmojiReactions(let value):
            try container.encode(Kind.updateActiveEmojiReactions, forKey: .type)
            try value.encode(to: encoder)
        case .updateDefaultReactionType(let value):
            try container.encode(Kind.updateDefaultReactionType, forKey: .type)
            try value.encode(to: encoder)
        case .updateSavedMessagesTags(let value):
            try container.encode(Kind.updateSavedMessagesTags, forKey: .type)
            try value.encode(to: encoder)
        case .updateChatRevenueAmount:
            try container.encode(Kind.updateChatRevenueAmount, forKey: .type)
        case .updateSpeechRecognitionTrial(let value):
            try container.encode(Kind.updateSpeechRecognitionTrial, forKey: .type)
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
        case .updateSpeedLimitNotification(let value):
            try container.encode(Kind.updateSpeedLimitNotification, forKey: .type)
            try value.encode(to: encoder)
        case .updateContactCloseBirthdays(let value):
            try container.encode(Kind.updateContactCloseBirthdays, forKey: .type)
            try value.encode(to: encoder)
        case .updateAutosaveSettings(let value):
            try container.encode(Kind.updateAutosaveSettings, forKey: .type)
            try value.encode(to: encoder)
        case .updateBusinessConnection(let value):
            try container.encode(Kind.updateBusinessConnection, forKey: .type)
            try value.encode(to: encoder)
        case .updateNewBusinessMessage(let value):
            try container.encode(Kind.updateNewBusinessMessage, forKey: .type)
            try value.encode(to: encoder)
        case .updateBusinessMessageEdited(let value):
            try container.encode(Kind.updateBusinessMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .updateBusinessMessagesDeleted(let value):
            try container.encode(Kind.updateBusinessMessagesDeleted, forKey: .type)
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
        case .updateChatBoost(let value):
            try container.encode(Kind.updateChatBoost, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageReaction(let value):
            try container.encode(Kind.updateMessageReaction, forKey: .type)
            try value.encode(to: encoder)
        case .updateMessageReactions(let value):
            try container.encode(Kind.updateMessageReactions, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user authorization state has changed
public struct UpdateAuthorizationState: Codable, Equatable, Hashable {

    /// New authorization state
    public let authorizationState: AuthorizationState


    public init(authorizationState: AuthorizationState) {
        self.authorizationState = authorizationState
    }
}

/// A new message was received; can also be an outgoing message
public struct UpdateNewMessage: Codable, Equatable, Hashable {

    /// The new message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
public struct UpdateMessageSendAcknowledged: Codable, Equatable, Hashable {

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
public struct UpdateMessageSendSucceeded: Codable, Equatable, Hashable {

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
public struct UpdateMessageSendFailed: Codable, Equatable, Hashable {

    /// The cause of the message sending failure
    public let error: Error

    /// The failed to send message
    public let message: Message

    /// The previous temporary message identifier
    public let oldMessageId: Int64


    public init(
        error: Error,
        message: Message,
        oldMessageId: Int64
    ) {
        self.error = error
        self.message = message
        self.oldMessageId = oldMessageId
    }
}

/// The message content has changed
public struct UpdateMessageContent: Codable, Equatable, Hashable {

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
public struct UpdateMessageEdited: Codable, Equatable, Hashable {

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
public struct UpdateMessageIsPinned: Codable, Equatable, Hashable {

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
public struct UpdateMessageInteractionInfo: Codable, Equatable, Hashable {

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

/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer
public struct UpdateMessageContentOpened: Codable, Equatable, Hashable {

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
public struct UpdateMessageMentionRead: Codable, Equatable, Hashable {

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
public struct UpdateMessageUnreadReactions: Codable, Equatable, Hashable {

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
public struct UpdateMessageLiveLocationViewed: Codable, Equatable, Hashable {

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
public struct UpdateNewChat: Codable, Equatable, Hashable {

    /// The chat
    public let chat: Chat


    public init(chat: Chat) {
        self.chat = chat
    }
}

/// The title of a chat was changed
public struct UpdateChatTitle: Codable, Equatable, Hashable {

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
public struct UpdateChatPhoto: Codable, Equatable, Hashable {

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

/// Chat accent colors have changed
public struct UpdateChatAccentColors: Codable, Equatable, Hashable {

    /// The new chat accent color identifier
    public let accentColorId: Int

    /// The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none
    public let backgroundCustomEmojiId: TdInt64

    /// Chat identifier
    public let chatId: Int64

    /// The new chat profile accent color identifier; -1 if none
    public let profileAccentColorId: Int

    /// The new identifier of a custom emoji to be shown on the profile background; 0 if none
    public let profileBackgroundCustomEmojiId: TdInt64


    public init(
        accentColorId: Int,
        backgroundCustomEmojiId: TdInt64,
        chatId: Int64,
        profileAccentColorId: Int,
        profileBackgroundCustomEmojiId: TdInt64
    ) {
        self.accentColorId = accentColorId
        self.backgroundCustomEmojiId = backgroundCustomEmojiId
        self.chatId = chatId
        self.profileAccentColorId = profileAccentColorId
        self.profileBackgroundCustomEmojiId = profileBackgroundCustomEmojiId
    }
}

/// Chat permissions were changed
public struct UpdateChatPermissions: Codable, Equatable, Hashable {

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

/// The last message of a chat was changed
public struct UpdateChatLastMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update
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

/// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update
public struct UpdateChatPosition: Codable, Equatable, Hashable {

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

/// A chat was added to a chat list
public struct UpdateChatAddedToList: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The chat list to which the chat was added
    public let chatList: ChatList


    public init(
        chatId: Int64,
        chatList: ChatList
    ) {
        self.chatId = chatId
        self.chatList = chatList
    }
}

/// A chat was removed from a chat list
public struct UpdateChatRemovedFromList: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The chat list from which the chat was removed
    public let chatList: ChatList


    public init(
        chatId: Int64,
        chatList: ChatList
    ) {
        self.chatId = chatId
        self.chatList = chatList
    }
}

/// Incoming messages were read or the number of unread messages has been changed
public struct UpdateChatReadInbox: Codable, Equatable, Hashable {

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
public struct UpdateChatReadOutbox: Codable, Equatable, Hashable {

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
public struct UpdateChatActionBar: Codable, Equatable, Hashable {

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

/// The bar for managing business bot was changed in a chat
public struct UpdateChatBusinessBotManageBar: Codable, Equatable, Hashable {

    /// The new value of the business bot manage bar; may be null
    public let businessBotManageBar: BusinessBotManageBar?

    /// Chat identifier
    public let chatId: Int64


    public init(
        businessBotManageBar: BusinessBotManageBar?,
        chatId: Int64
    ) {
        self.businessBotManageBar = businessBotManageBar
        self.chatId = chatId
    }
}

/// The chat available reactions were changed
public struct UpdateChatAvailableReactions: Codable, Equatable, Hashable {

    /// The new reactions, available in the chat
    public let availableReactions: ChatAvailableReactions

    /// Chat identifier
    public let chatId: Int64


    public init(
        availableReactions: ChatAvailableReactions,
        chatId: Int64
    ) {
        self.availableReactions = availableReactions
        self.chatId = chatId
    }
}

/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
public struct UpdateChatDraftMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new draft message; may be null if none
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

/// Chat emoji status has changed
public struct UpdateChatEmojiStatus: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat emoji status; may be null
    public let emojiStatus: EmojiStatus?


    public init(
        chatId: Int64,
        emojiStatus: EmojiStatus?
    ) {
        self.chatId = chatId
        self.emojiStatus = emojiStatus
    }
}

/// The message sender that is selected to send messages in a chat has changed
public struct UpdateChatMessageSender: Codable, Equatable, Hashable {

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

/// The message auto-delete or self-destruct timer setting for a chat was changed
public struct UpdateChatMessageAutoDeleteTime: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of message_auto_delete_time
    public let messageAutoDeleteTime: Int


    public init(
        chatId: Int64,
        messageAutoDeleteTime: Int
    ) {
        self.chatId = chatId
        self.messageAutoDeleteTime = messageAutoDeleteTime
    }
}

/// Notification settings for a chat were changed
public struct UpdateChatNotificationSettings: Codable, Equatable, Hashable {

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
public struct UpdateChatPendingJoinRequests: Codable, Equatable, Hashable {

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
public struct UpdateChatReplyMarkup: Codable, Equatable, Hashable {

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

/// The chat background was changed
public struct UpdateChatBackground: Codable, Equatable, Hashable {

    /// The new chat background; may be null if background was reset to default
    public let background: ChatBackground?

    /// Chat identifier
    public let chatId: Int64


    public init(
        background: ChatBackground?,
        chatId: Int64
    ) {
        self.background = background
        self.chatId = chatId
    }
}

/// The chat theme was changed
public struct UpdateChatTheme: Codable, Equatable, Hashable {

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
public struct UpdateChatUnreadMentionCount: Codable, Equatable, Hashable {

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
public struct UpdateChatUnreadReactionCount: Codable, Equatable, Hashable {

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
public struct UpdateChatVideoChat: Codable, Equatable, Hashable {

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
public struct UpdateChatDefaultDisableNotification: Codable, Equatable, Hashable {

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
public struct UpdateChatHasProtectedContent: Codable, Equatable, Hashable {

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

/// Translation of chat messages was enabled or disabled
public struct UpdateChatIsTranslatable: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_translatable
    public let isTranslatable: Bool


    public init(
        chatId: Int64,
        isTranslatable: Bool
    ) {
        self.chatId = chatId
        self.isTranslatable = isTranslatable
    }
}

/// A chat was marked as unread or was read
public struct UpdateChatIsMarkedAsUnread: Codable, Equatable, Hashable {

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

/// A chat default appearance has changed
public struct UpdateChatViewAsTopics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of view_as_topics
    public let viewAsTopics: Bool


    public init(
        chatId: Int64,
        viewAsTopics: Bool
    ) {
        self.chatId = chatId
        self.viewAsTopics = viewAsTopics
    }
}

/// A chat was blocked or unblocked
public struct UpdateChatBlockList: Codable, Equatable, Hashable {

    /// Block list to which the chat is added; may be null if none
    public let blockList: BlockList?

    /// Chat identifier
    public let chatId: Int64


    public init(
        blockList: BlockList?,
        chatId: Int64
    ) {
        self.blockList = blockList
        self.chatId = chatId
    }
}

/// A chat's has_scheduled_messages field has changed
public struct UpdateChatHasScheduledMessages: Codable, Equatable, Hashable {

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

/// The list of chat folders or a chat folder has changed
public struct UpdateChatFolders: Codable, Equatable, Hashable {

    /// True, if folder tags are enabled
    public let areTagsEnabled: Bool

    /// The new list of chat folders
    public let chatFolders: [ChatFolderInfo]

    /// Position of the main chat list among chat folders, 0-based
    public let mainChatListPosition: Int


    public init(
        areTagsEnabled: Bool,
        chatFolders: [ChatFolderInfo],
        mainChatListPosition: Int
    ) {
        self.areTagsEnabled = areTagsEnabled
        self.chatFolders = chatFolders
        self.mainChatListPosition = mainChatListPosition
    }
}

/// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it is sent just after the number of online users has changed
public struct UpdateChatOnlineMemberCount: Codable, Equatable, Hashable {

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

/// Basic information about a Saved Messages topic has changed. This update is guaranteed to come before the topic identifier is returned to the application
public struct UpdateSavedMessagesTopic: Codable, Equatable, Hashable {

    /// New data about the topic
    public let topic: SavedMessagesTopic


    public init(topic: SavedMessagesTopic) {
        self.topic = topic
    }
}

/// Number of Saved Messages topics has changed
public struct UpdateSavedMessagesTopicCount: Codable, Equatable, Hashable {

    /// Approximate total number of Saved Messages topics
    public let topicCount: Int


    public init(topicCount: Int) {
        self.topicCount = topicCount
    }
}

/// Basic information about a quick reply shortcut has changed. This update is guaranteed to come before the quick shortcut name is returned to the application
public struct UpdateQuickReplyShortcut: Codable, Equatable, Hashable {

    /// New data about the shortcut
    public let shortcut: QuickReplyShortcut


    public init(shortcut: QuickReplyShortcut) {
        self.shortcut = shortcut
    }
}

/// A quick reply shortcut and all its messages were deleted
public struct UpdateQuickReplyShortcutDeleted: Codable, Equatable, Hashable {

    /// The identifier of the deleted shortcut
    public let shortcutId: Int


    public init(shortcutId: Int) {
        self.shortcutId = shortcutId
    }
}

/// The list of quick reply shortcuts has changed
public struct UpdateQuickReplyShortcuts: Codable, Equatable, Hashable {

    /// The new list of identifiers of quick reply shortcuts
    public let shortcutIds: [Int]


    public init(shortcutIds: [Int]) {
        self.shortcutIds = shortcutIds
    }
}

/// The list of quick reply shortcut messages has changed
public struct UpdateQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// The new list of quick reply messages for the shortcut in order from the first to the last sent
    public let messages: [QuickReplyMessage]

    /// The identifier of the shortcut
    public let shortcutId: Int


    public init(
        messages: [QuickReplyMessage],
        shortcutId: Int
    ) {
        self.messages = messages
        self.shortcutId = shortcutId
    }
}

/// Basic information about a topic in a forum chat was changed
public struct UpdateForumTopicInfo: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New information about the topic
    public let info: ForumTopicInfo


    public init(
        chatId: Int64,
        info: ForumTopicInfo
    ) {
        self.chatId = chatId
        self.info = info
    }
}

/// Notification settings for some type of chats were updated
public struct UpdateScopeNotificationSettings: Codable, Equatable, Hashable {

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

/// Notification settings for reactions were updated
public struct UpdateReactionNotificationSettings: Codable, Equatable, Hashable {

    /// The new notification settings
    public let notificationSettings: ReactionNotificationSettings


    public init(notificationSettings: ReactionNotificationSettings) {
        self.notificationSettings = notificationSettings
    }
}

/// A notification was changed
public struct UpdateNotification: Codable, Equatable, Hashable {

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
public struct UpdateNotificationGroup: Codable, Equatable, Hashable {

    /// List of added group notifications, sorted by notification identifier
    public let addedNotifications: [Notification]

    /// Identifier of a chat to which all notifications in the group belong
    public let chatId: Int64

    /// Unique notification group identifier
    public let notificationGroupId: Int

    /// Chat identifier, which notification settings must be applied to the added notifications
    public let notificationSettingsChatId: Int64

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let notificationSoundId: TdInt64

    /// Identifiers of removed group notifications, sorted by notification identifier
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

/// Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
public struct UpdateActiveNotifications: Codable, Equatable, Hashable {

    /// Lists of active notification groups
    public let groups: [NotificationGroup]


    public init(groups: [NotificationGroup]) {
        self.groups = groups
    }
}

/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
public struct UpdateHavePendingNotifications: Codable, Equatable, Hashable {

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
public struct UpdateDeleteMessages: Codable, Equatable, Hashable {

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
public struct UpdateChatAction: Codable, Equatable, Hashable {

    /// The action
    public let action: ChatAction

    /// Chat identifier
    public let chatId: Int64

    /// If not 0, the message thread identifier in which the action was performed
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
public struct UpdateUserStatus: Codable, Equatable, Hashable {

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
public struct UpdateUser: Codable, Equatable, Hashable {

    /// New data about the user
    public let user: User


    public init(user: User) {
        self.user = user
    }
}

/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
public struct UpdateBasicGroup: Codable, Equatable, Hashable {

    /// New data about the group
    public let basicGroup: BasicGroup


    public init(basicGroup: BasicGroup) {
        self.basicGroup = basicGroup
    }
}

/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
public struct UpdateSupergroup: Codable, Equatable, Hashable {

    /// New data about the supergroup
    public let supergroup: Supergroup


    public init(supergroup: Supergroup) {
        self.supergroup = supergroup
    }
}

/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
public struct UpdateSecretChat: Codable, Equatable, Hashable {

    /// New data about the secret chat
    public let secretChat: SecretChat


    public init(secretChat: SecretChat) {
        self.secretChat = secretChat
    }
}

/// Some data in userFullInfo has been changed
public struct UpdateUserFullInfo: Codable, Equatable, Hashable {

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
public struct UpdateBasicGroupFullInfo: Codable, Equatable, Hashable {

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
public struct UpdateSupergroupFullInfo: Codable, Equatable, Hashable {

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
public struct UpdateServiceNotification: Codable, Equatable, Hashable {

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
public struct UpdateFile: Codable, Equatable, Hashable {

    /// New data about the file
    public let file: File


    public init(file: File) {
        self.file = file
    }
}

/// The file generation process needs to be started by the application
public struct UpdateFileGenerationStart: Codable, Equatable, Hashable {

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
public struct UpdateFileGenerationStop: Codable, Equatable, Hashable {

    /// Unique identifier for the generation process
    public let generationId: TdInt64


    public init(generationId: TdInt64) {
        self.generationId = generationId
    }
}

/// The state of the file download list has changed
public struct UpdateFileDownloads: Codable, Equatable, Hashable {

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
public struct UpdateFileAddedToDownloads: Codable, Equatable, Hashable {

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
public struct UpdateFileDownload: Codable, Equatable, Hashable {

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
public struct UpdateFileRemovedFromDownloads: Codable, Equatable, Hashable {

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
public struct UpdateCall: Codable, Equatable, Hashable {

    /// New data about a call
    public let call: Call


    public init(call: Call) {
        self.call = call
    }
}

/// Information about a group call was updated
public struct UpdateGroupCall: Codable, Equatable, Hashable {

    /// New data about a group call
    public let groupCall: GroupCall


    public init(groupCall: GroupCall) {
        self.groupCall = groupCall
    }
}

/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
public struct UpdateGroupCallParticipant: Codable, Equatable, Hashable {

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
public struct UpdateNewCallSignalingData: Codable, Equatable, Hashable {

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
public struct UpdateUserPrivacySettingRules: Codable, Equatable, Hashable {

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
public struct UpdateUnreadMessageCount: Codable, Equatable, Hashable {

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
public struct UpdateUnreadChatCount: Codable, Equatable, Hashable {

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

/// A story was changed
public struct UpdateStory: Codable, Equatable, Hashable {

    /// The new information about the story
    public let story: Story


    public init(story: Story) {
        self.story = story
    }
}

/// A story became inaccessible
public struct UpdateStoryDeleted: Codable, Equatable, Hashable {

    /// Story identifier
    public let storyId: Int

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64


    public init(
        storyId: Int,
        storySenderChatId: Int64
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

/// A story has been successfully sent
public struct UpdateStorySendSucceeded: Codable, Equatable, Hashable {

    /// The previous temporary story identifier
    public let oldStoryId: Int

    /// The sent story
    public let story: Story


    public init(
        oldStoryId: Int,
        story: Story
    ) {
        self.oldStoryId = oldStoryId
        self.story = story
    }
}

/// A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update
public struct UpdateStorySendFailed: Codable, Equatable, Hashable {

    /// The cause of the story sending failure
    public let error: Error

    /// Type of the error; may be null if unknown
    public let errorType: CanSendStoryResult?

    /// The failed to send story
    public let story: Story


    public init(
        error: Error,
        errorType: CanSendStoryResult?,
        story: Story
    ) {
        self.error = error
        self.errorType = errorType
        self.story = story
    }
}

/// The list of active stories posted by a specific chat has changed
public struct UpdateChatActiveStories: Codable, Equatable, Hashable {

    /// The new list of active stories
    public let activeStories: ChatActiveStories


    public init(activeStories: ChatActiveStories) {
        self.activeStories = activeStories
    }
}

/// Number of chats in a story list has changed
public struct UpdateStoryListChatCount: Codable, Equatable, Hashable {

    /// Approximate total number of chats with active stories in the list
    public let chatCount: Int

    /// The story list
    public let storyList: StoryList


    public init(
        chatCount: Int,
        storyList: StoryList
    ) {
        self.chatCount = chatCount
        self.storyList = storyList
    }
}

/// Story stealth mode settings have changed
public struct UpdateStoryStealthMode: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled
    public let activeUntilDate: Int

    /// Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown
    public let cooldownUntilDate: Int


    public init(
        activeUntilDate: Int,
        cooldownUntilDate: Int
    ) {
        self.activeUntilDate = activeUntilDate
        self.cooldownUntilDate = cooldownUntilDate
    }
}

/// An option changed its value
public struct UpdateOption: Codable, Equatable, Hashable {

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
public struct UpdateStickerSet: Codable, Equatable, Hashable {

    /// The sticker set
    public let stickerSet: StickerSet


    public init(stickerSet: StickerSet) {
        self.stickerSet = stickerSet
    }
}

/// The list of installed sticker sets was updated
public struct UpdateInstalledStickerSets: Codable, Equatable, Hashable {

    /// The new list of installed ordinary sticker sets
    public let stickerSetIds: [TdInt64]

    /// Type of the affected stickers
    public let stickerType: StickerType


    public init(
        stickerSetIds: [TdInt64],
        stickerType: StickerType
    ) {
        self.stickerSetIds = stickerSetIds
        self.stickerType = stickerType
    }
}

/// The list of trending sticker sets was updated or some of them were viewed
public struct UpdateTrendingStickerSets: Codable, Equatable, Hashable {

    /// The prefix of the list of trending sticker sets with the newest trending sticker sets
    public let stickerSets: TrendingStickerSets

    /// Type of the affected stickers
    public let stickerType: StickerType


    public init(
        stickerSets: TrendingStickerSets,
        stickerType: StickerType
    ) {
        self.stickerSets = stickerSets
        self.stickerType = stickerType
    }
}

/// The list of recently used stickers was updated
public struct UpdateRecentStickers: Codable, Equatable, Hashable {

    /// True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated
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
public struct UpdateFavoriteStickers: Codable, Equatable, Hashable {

    /// The new list of file identifiers of favorite stickers
    public let stickerIds: [Int]


    public init(stickerIds: [Int]) {
        self.stickerIds = stickerIds
    }
}

/// The list of saved animations was updated
public struct UpdateSavedAnimations: Codable, Equatable, Hashable {

    /// The new list of file identifiers of saved animations
    public let animationIds: [Int]


    public init(animationIds: [Int]) {
        self.animationIds = animationIds
    }
}

/// The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
public struct UpdateSavedNotificationSounds: Codable, Equatable, Hashable {

    /// The new list of identifiers of saved notification sounds
    public let notificationSoundIds: [TdInt64]


    public init(notificationSoundIds: [TdInt64]) {
        self.notificationSoundIds = notificationSoundIds
    }
}

/// The default background has changed
public struct UpdateDefaultBackground: Codable, Equatable, Hashable {

    /// The new default background; may be null
    public let background: Background?

    /// True, if default background for dark theme has changed
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
public struct UpdateChatThemes: Codable, Equatable, Hashable {

    /// The new list of chat themes
    public let chatThemes: [ChatTheme]


    public init(chatThemes: [ChatTheme]) {
        self.chatThemes = chatThemes
    }
}

/// The list of supported accent colors has changed
public struct UpdateAccentColors: Codable, Equatable, Hashable {

    /// The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order
    public let availableAccentColorIds: [Int]

    /// Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme
    public let colors: [AccentColor]


    public init(
        availableAccentColorIds: [Int],
        colors: [AccentColor]
    ) {
        self.availableAccentColorIds = availableAccentColorIds
        self.colors = colors
    }
}

/// The list of supported accent colors for user profiles has changed
public struct UpdateProfileAccentColors: Codable, Equatable, Hashable {

    /// The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specififed order
    public let availableAccentColorIds: [Int]

    /// Information about supported colors
    public let colors: [ProfileAccentColor]


    public init(
        availableAccentColorIds: [Int],
        colors: [ProfileAccentColor]
    ) {
        self.availableAccentColorIds = availableAccentColorIds
        self.colors = colors
    }
}

/// Some language pack strings have been updated
public struct UpdateLanguagePackStrings: Codable, Equatable, Hashable {

    /// Identifier of the updated language pack
    public let languagePackId: String

    /// Localization target to which the language pack belongs
    public let localizationTarget: String

    /// List of changed language pack strings; empty if all strings have changed
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
public struct UpdateConnectionState: Codable, Equatable, Hashable {

    /// The new connection state
    public let state: ConnectionState


    public init(state: ConnectionState) {
        self.state = state
    }
}

/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
public struct UpdateTermsOfService: Codable, Equatable, Hashable {

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
public struct UpdateUsersNearby: Codable, Equatable, Hashable {

    /// The new list of users nearby
    public let usersNearby: [ChatNearby]


    public init(usersNearby: [ChatNearby]) {
        self.usersNearby = usersNearby
    }
}

/// The first unconfirmed session has changed
public struct UpdateUnconfirmedSession: Codable, Equatable, Hashable {

    /// The unconfirmed session; may be null if none
    public let session: UnconfirmedSession?


    public init(session: UnconfirmedSession?) {
        self.session = session
    }
}

/// The list of bots added to attachment or side menu has changed
public struct UpdateAttachmentMenuBots: Codable, Equatable, Hashable {

    /// The new list of bots. The bots must not be shown on scheduled messages screen
    public let bots: [AttachmentMenuBot]


    public init(bots: [AttachmentMenuBot]) {
        self.bots = bots
    }
}

/// A message was sent by an opened Web App, so the Web App needs to be closed
public struct UpdateWebAppMessageSent: Codable, Equatable, Hashable {

    /// Identifier of Web App launch
    public let webAppLaunchId: TdInt64


    public init(webAppLaunchId: TdInt64) {
        self.webAppLaunchId = webAppLaunchId
    }
}

/// The list of active emoji reactions has changed
public struct UpdateActiveEmojiReactions: Codable, Equatable, Hashable {

    /// The new list of active emoji reactions
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

/// The type of default reaction has changed
public struct UpdateDefaultReactionType: Codable, Equatable, Hashable {

    /// The new type of the default reaction
    public let reactionType: ReactionType


    public init(reactionType: ReactionType) {
        self.reactionType = reactionType
    }
}

/// Tags used in Saved Messages or a Saved Messages topic have changed
public struct UpdateSavedMessagesTags: Codable, Equatable, Hashable {

    /// Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed
    public let savedMessagesTopicId: Int64

    /// The new tags
    public let tags: SavedMessagesTags


    public init(
        savedMessagesTopicId: Int64,
        tags: SavedMessagesTags
    ) {
        self.savedMessagesTopicId = savedMessagesTopicId
        self.tags = tags
    }
}

/// The parameters of speech recognition without Telegram Premium subscription has changed
public struct UpdateSpeechRecognitionTrial: Codable, Equatable, Hashable {

    /// Number of left speech recognition attempts this week
    public let leftCount: Int

    /// The maximum allowed duration of media for speech recognition without Telegram Premium subscription, in seconds
    public let maxMediaDuration: Int

    /// Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown
    public let nextResetDate: Int

    /// The total number of allowed speech recognitions per week; 0 if none
    public let weeklyCount: Int


    public init(
        leftCount: Int,
        maxMediaDuration: Int,
        nextResetDate: Int,
        weeklyCount: Int
    ) {
        self.leftCount = leftCount
        self.maxMediaDuration = maxMediaDuration
        self.nextResetDate = nextResetDate
        self.weeklyCount = weeklyCount
    }
}

/// The list of supported dice emojis has changed
public struct UpdateDiceEmojis: Codable, Equatable, Hashable {

    /// The new list of supported dice emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

/// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
public struct UpdateAnimatedEmojiMessageClicked: Codable, Equatable, Hashable {

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

/// The parameters of animation search through getOption("animation_search_bot_username") bot has changed
public struct UpdateAnimationSearchParameters: Codable, Equatable, Hashable {

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
public struct UpdateSuggestedActions: Codable, Equatable, Hashable {

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

/// Download or upload file speed for the user was limited, but it can be restored by subscription to Telegram Premium. The notification can be postponed until a being downloaded or uploaded file is visible to the user Use getOption("premium_download_speedup") or getOption("premium_upload_speedup") to get expected speedup after subscription to Telegram Premium
public struct UpdateSpeedLimitNotification: Codable, Equatable, Hashable {

    /// True, if upload speed was limited; false, if download speed was limited
    public let isUpload: Bool


    public init(isUpload: Bool) {
        self.isUpload = isUpload
    }
}

/// The list of contacts that had birthdays recently or will have birthday soon has changed
public struct UpdateContactCloseBirthdays: Codable, Equatable, Hashable {

    /// List of contact users with close birthday
    public let closeBirthdayUsers: [CloseBirthdayUser]


    public init(closeBirthdayUsers: [CloseBirthdayUser]) {
        self.closeBirthdayUsers = closeBirthdayUsers
    }
}

/// Autosave settings for some type of chats were updated
public struct UpdateAutosaveSettings: Codable, Equatable, Hashable {

    /// Type of chats for which autosave settings were updated
    public let scope: AutosaveSettingsScope

    /// The new autosave settings; may be null if the settings are reset to default
    public let settings: ScopeAutosaveSettings?


    public init(
        scope: AutosaveSettingsScope,
        settings: ScopeAutosaveSettings?
    ) {
        self.scope = scope
        self.settings = settings
    }
}

/// A business connection has changed; for bots only
public struct UpdateBusinessConnection: Codable, Equatable, Hashable {

    /// New data about the connection
    public let connection: BusinessConnection


    public init(connection: BusinessConnection) {
        self.connection = connection
    }
}

/// A new message was added to a business account; for bots only
public struct UpdateNewBusinessMessage: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
    public let connectionId: String

    /// The new message
    public let message: BusinessMessage


    public init(
        connectionId: String,
        message: BusinessMessage
    ) {
        self.connectionId = connectionId
        self.message = message
    }
}

/// A message in a business account was edited; for bots only
public struct UpdateBusinessMessageEdited: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
    public let connectionId: String

    /// The edited message
    public let message: BusinessMessage


    public init(
        connectionId: String,
        message: BusinessMessage
    ) {
        self.connectionId = connectionId
        self.message = message
    }
}

/// Messages in a business account were deleted; for bots only
public struct UpdateBusinessMessagesDeleted: Codable, Equatable, Hashable {

    /// Identifier of a chat in the business account in which messages were deleted
    public let chatId: Int64

    /// Unique identifier of the business connection
    public let connectionId: String

    /// Unique message identifiers of the deleted messages
    public let messageIds: [Int64]


    public init(
        chatId: Int64,
        connectionId: String,
        messageIds: [Int64]
    ) {
        self.chatId = chatId
        self.connectionId = connectionId
        self.messageIds = messageIds
    }
}

/// A new incoming inline query; for bots only
public struct UpdateNewInlineQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdateNewChosenInlineResult: Codable, Equatable, Hashable {

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
public struct UpdateNewCallbackQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdateNewInlineCallbackQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdateNewShippingQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdateNewPreCheckoutQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdateNewCustomEvent: Codable, Equatable, Hashable {

    /// A JSON-serialized event
    public let event: String


    public init(event: String) {
        self.event = event
    }
}

/// A new incoming query; for bots only
public struct UpdateNewCustomQuery: Codable, Equatable, Hashable, Identifiable {

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
public struct UpdatePoll: Codable, Equatable, Hashable {

    /// New data about the poll
    public let poll: Poll


    public init(poll: Poll) {
        self.poll = poll
    }
}

/// A user changed the answer to a poll; for bots only
public struct UpdatePollAnswer: Codable, Equatable, Hashable {

    /// 0-based identifiers of answer options, chosen by the user
    public let optionIds: [Int]

    /// Unique poll identifier
    public let pollId: TdInt64

    /// Identifier of the message sender that changed the answer to the poll
    public let voterId: MessageSender


    public init(
        optionIds: [Int],
        pollId: TdInt64,
        voterId: MessageSender
    ) {
        self.optionIds = optionIds
        self.pollId = pollId
        self.voterId = voterId
    }
}

/// User rights changed in a chat; for bots only
public struct UpdateChatMember: Codable, Equatable, Hashable {

    /// Identifier of the user, changing the rights
    public let actorUserId: Int64

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the user rights were changed
    public let date: Int

    /// If user has joined the chat using an invite link, the invite link; may be null
    public let inviteLink: ChatInviteLink?

    /// New chat member
    public let newChatMember: ChatMember

    /// Previous chat member
    public let oldChatMember: ChatMember

    /// True, if the user has joined the chat using an invite link for a chat folder
    public let viaChatFolderInviteLink: Bool

    /// True, if the user has joined the chat after sending a join request and being approved by an administrator
    public let viaJoinRequest: Bool


    public init(
        actorUserId: Int64,
        chatId: Int64,
        date: Int,
        inviteLink: ChatInviteLink?,
        newChatMember: ChatMember,
        oldChatMember: ChatMember,
        viaChatFolderInviteLink: Bool,
        viaJoinRequest: Bool
    ) {
        self.actorUserId = actorUserId
        self.chatId = chatId
        self.date = date
        self.inviteLink = inviteLink
        self.newChatMember = newChatMember
        self.oldChatMember = oldChatMember
        self.viaChatFolderInviteLink = viaChatFolderInviteLink
        self.viaJoinRequest = viaJoinRequest
    }
}

/// A user sent a join request to a chat; for bots only
public struct UpdateNewChatJoinRequest: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The invite link, which was used to send join request; may be null
    public let inviteLink: ChatInviteLink?

    /// Join request
    public let request: ChatJoinRequest

    /// Chat identifier of the private chat with the user
    public let userChatId: Int64


    public init(
        chatId: Int64,
        inviteLink: ChatInviteLink?,
        request: ChatJoinRequest,
        userChatId: Int64
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
        self.request = request
        self.userChatId = userChatId
    }
}

/// A chat boost has changed; for bots only
public struct UpdateChatBoost: Codable, Equatable, Hashable {

    /// New information about the boost
    public let boost: ChatBoost

    /// Chat identifier
    public let chatId: Int64


    public init(
        boost: ChatBoost,
        chatId: Int64
    ) {
        self.boost = boost
        self.chatId = chatId
    }
}

/// User changed its reactions on a message with public reactions; for bots only
public struct UpdateMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the user or chat that changed reactions
    public let actorId: MessageSender

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the reactions were changed
    public let date: Int

    /// Message identifier
    public let messageId: Int64

    /// New list of chosen reactions
    public let newReactionTypes: [ReactionType]

    /// Old list of chosen reactions
    public let oldReactionTypes: [ReactionType]


    public init(
        actorId: MessageSender,
        chatId: Int64,
        date: Int,
        messageId: Int64,
        newReactionTypes: [ReactionType],
        oldReactionTypes: [ReactionType]
    ) {
        self.actorId = actorId
        self.chatId = chatId
        self.date = date
        self.messageId = messageId
        self.newReactionTypes = newReactionTypes
        self.oldReactionTypes = oldReactionTypes
    }
}

/// Reactions added to a message with anonymous reactions have changed; for bots only
public struct UpdateMessageReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the reactions were changed
    public let date: Int

    /// Message identifier
    public let messageId: Int64

    /// The list of reactions added to the message
    public let reactions: [MessageReaction]


    public init(
        chatId: Int64,
        date: Int,
        messageId: Int64,
        reactions: [MessageReaction]
    ) {
        self.chatId = chatId
        self.date = date
        self.messageId = messageId
        self.reactions = reactions
    }
}

