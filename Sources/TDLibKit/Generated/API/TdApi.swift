//
//  TdApi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-33c689aa
//  https://github.com/tdlib/td/tree/33c689aa
//

import Foundation


public final class TdApi {

    public let client: TdClient
    public let encoder = JSONEncoder()
    public let decoder = JSONDecoder()

    public init(client: TdClient) {
        self.client = client
        self.encoder.keyEncodingStrategy = .convertToSnakeCase
        self.decoder.keyDecodingStrategy = .convertFromSnakeCase
    }


    /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization
    public func getAuthorizationState(, completion: @escaping (Result<AuthorizationState, Swift.Error>) -> Void) throws {
        let query = GetAuthorizationState()
        execute(query: query, completion: completion)
    }

    /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
    /// - Parameter parameters: Parameters for TDLib initialization
    public func setTdlibParameters(
        parameters: TdlibParameters?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetTdlibParameters(
            parameters: parameters
        )
        execute(query: query, completion: completion)
    }

    /// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
    /// - Parameter encryptionKey: Encryption key to check or set up
    public func checkDatabaseEncryptionKey(
        encryptionKey: Data?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckDatabaseEncryptionKey(
            encryptionKey: encryptionKey
        )
        execute(query: query, completion: completion)
    }

    /// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
    /// - Parameter phoneNumber: The phone number of the user, in international format
    /// - Parameter settings: Settings for the authentication of the user's phone number; pass null to use default settings
    public func setAuthenticationPhoneNumber(
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetAuthenticationPhoneNumber(
            phoneNumber: phoneNumber,
            settings: settings
        )
        execute(query: query, completion: completion)
    }

    /// Re-sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed
    public func resendAuthenticationCode(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ResendAuthenticationCode()
        execute(query: query, completion: completion)
    }

    /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
    /// - Parameter code: The verification code received via SMS, Telegram message, phone call, or flash call
    public func checkAuthenticationCode(
        code: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckAuthenticationCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
    /// - Parameter otherUserIds: List of user identifiers of other users currently using the application
    public func requestQrCodeAuthentication(
        otherUserIds: [Int64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RequestQrCodeAuthentication(
            otherUserIds: otherUserIds
        )
        execute(query: query, completion: completion)
    }

    /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
    /// - Parameter firstName: The first name of the user; 1-64 characters
    /// - Parameter lastName: The last name of the user; 0-64 characters
    public func registerUser(
        firstName: String?,
        lastName: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RegisterUser(
            firstName: firstName,
            lastName: lastName
        )
        execute(query: query, completion: completion)
    }

    /// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
    /// - Parameter password: The password to check
    public func checkAuthenticationPassword(
        password: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckAuthenticationPassword(
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
    public func requestAuthenticationPasswordRecovery(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = RequestAuthenticationPasswordRecovery()
        execute(query: query, completion: completion)
    }

    /// Checks whether a password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
    /// - Parameter recoveryCode: Recovery code to check
    public func checkAuthenticationPasswordRecoveryCode(
        recoveryCode: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckAuthenticationPasswordRecoveryCode(
            recoveryCode: recoveryCode
        )
        execute(query: query, completion: completion)
    }

    /// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
    /// - Parameter newHint: New password hint; may be empty
    /// - Parameter newPassword: New password of the user; may be empty to remove the password
    /// - Parameter recoveryCode: Recovery code to check
    public func recoverAuthenticationPassword(
        newHint: String?,
        newPassword: String?,
        recoveryCode: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RecoverAuthenticationPassword(
            newHint: newHint,
            newPassword: newPassword,
            recoveryCode: recoveryCode
        )
        execute(query: query, completion: completion)
    }

    /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
    /// - Parameter token: The bot token
    public func checkAuthenticationBotToken(
        token: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckAuthenticationBotToken(
            token: token
        )
        execute(query: query, completion: completion)
    }

    /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
    public func logOut(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = LogOut()
        execute(query: query, completion: completion)
    }

    /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization
    public func close(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = Close()
        execute(query: query, completion: completion)
    }

    /// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization
    public func destroy(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = Destroy()
        execute(query: query, completion: completion)
    }

    /// Confirms QR code authentication on another device. Returns created session on success
    /// - Parameter link: A link from a QR code. The link must be scanned by the in-app camera
    public func confirmQrCodeAuthentication(
        link: String?
        , completion: @escaping (Result<Session, Swift.Error>) -> Void
    ) throws {
        let query = ConfirmQrCodeAuthentication(
            link: link
        )
        execute(query: query, completion: completion)
    }

    /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
    public func getCurrentState(, completion: @escaping (Result<Updates, Swift.Error>) -> Void) throws {
        let query = GetCurrentState()
        execute(query: query, completion: completion)
    }

    /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
    /// - Parameter newEncryptionKey: New encryption key
    public func setDatabaseEncryptionKey(
        newEncryptionKey: Data?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetDatabaseEncryptionKey(
            newEncryptionKey: newEncryptionKey
        )
        execute(query: query, completion: completion)
    }

    /// Returns the current state of 2-step verification
    public func getPasswordState(, completion: @escaping (Result<PasswordState, Swift.Error>) -> Void) throws {
        let query = GetPasswordState()
        execute(query: query, completion: completion)
    }

    /// Changes the password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
    /// - Parameter newHint: New password hint; may be empty
    /// - Parameter newPassword: New password of the user; may be empty to remove the password
    /// - Parameter newRecoveryEmailAddress: New recovery email address; may be empty
    /// - Parameter oldPassword: Previous password of the user
    /// - Parameter setRecoveryEmailAddress: Pass true if the recovery email address must be changed
    public func setPassword(
        newHint: String?,
        newPassword: String?,
        newRecoveryEmailAddress: String?,
        oldPassword: String?,
        setRecoveryEmailAddress: Bool?
        , completion: @escaping (Result<PasswordState, Swift.Error>) -> Void
    ) throws {
        let query = SetPassword(
            newHint: newHint,
            newPassword: newPassword,
            newRecoveryEmailAddress: newRecoveryEmailAddress,
            oldPassword: oldPassword,
            setRecoveryEmailAddress: setRecoveryEmailAddress
        )
        execute(query: query, completion: completion)
    }

    /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user
    /// - Parameter password: The password for the current user
    public func getRecoveryEmailAddress(
        password: String?
        , completion: @escaping (Result<RecoveryEmailAddress, Swift.Error>) -> Void
    ) throws {
        let query = GetRecoveryEmailAddress(
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation
    /// - Parameter newRecoveryEmailAddress: New recovery email address
    /// - Parameter password: Password of the current user
    public func setRecoveryEmailAddress(
        newRecoveryEmailAddress: String?,
        password: String?
        , completion: @escaping (Result<PasswordState, Swift.Error>) -> Void
    ) throws {
        let query = SetRecoveryEmailAddress(
            newRecoveryEmailAddress: newRecoveryEmailAddress,
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Checks the 2-step verification recovery email address verification code
    /// - Parameter code: Verification code
    public func checkRecoveryEmailAddressCode(
        code: String?
        , completion: @escaping (Result<PasswordState, Swift.Error>) -> Void
    ) throws {
        let query = CheckRecoveryEmailAddressCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Resends the 2-step verification recovery email address verification code
    public func resendRecoveryEmailAddressCode(, completion: @escaping (Result<PasswordState, Swift.Error>) -> Void) throws {
        let query = ResendRecoveryEmailAddressCode()
        execute(query: query, completion: completion)
    }

    /// Requests to send a 2-step verification password recovery code to an email address that was previously set up
    public func requestPasswordRecovery(, completion: @escaping (Result<EmailAddressAuthenticationCodeInfo, Swift.Error>) -> Void) throws {
        let query = RequestPasswordRecovery()
        execute(query: query, completion: completion)
    }

    /// Checks whether a 2-step verification password recovery code sent to an email address is valid
    /// - Parameter recoveryCode: Recovery code to check
    public func checkPasswordRecoveryCode(
        recoveryCode: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckPasswordRecoveryCode(
            recoveryCode: recoveryCode
        )
        execute(query: query, completion: completion)
    }

    /// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up
    /// - Parameter newHint: New password hint; may be empty
    /// - Parameter newPassword: New password of the user; may be empty to remove the password
    /// - Parameter recoveryCode: Recovery code to check
    public func recoverPassword(
        newHint: String?,
        newPassword: String?,
        recoveryCode: String?
        , completion: @escaping (Result<PasswordState, Swift.Error>) -> Void
    ) throws {
        let query = RecoverPassword(
            newHint: newHint,
            newPassword: newPassword,
            recoveryCode: recoveryCode
        )
        execute(query: query, completion: completion)
    }

    /// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time
    public func resetPassword(, completion: @escaping (Result<ResetPasswordResult, Swift.Error>) -> Void) throws {
        let query = ResetPassword()
        execute(query: query, completion: completion)
    }

    /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date > 0
    public func cancelPasswordReset(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = CancelPasswordReset()
        execute(query: query, completion: completion)
    }

    /// Creates a new temporary password for processing payments
    /// - Parameter password: Persistent user password
    /// - Parameter validFor: Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
    public func createTemporaryPassword(
        password: String?,
        validFor: Int?
        , completion: @escaping (Result<TemporaryPasswordState, Swift.Error>) -> Void
    ) throws {
        let query = CreateTemporaryPassword(
            password: password,
            validFor: validFor
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about the current temporary password
    public func getTemporaryPasswordState(, completion: @escaping (Result<TemporaryPasswordState, Swift.Error>) -> Void) throws {
        let query = GetTemporaryPasswordState()
        execute(query: query, completion: completion)
    }

    /// Returns the current user
    public func getMe(, completion: @escaping (Result<User, Swift.Error>) -> Void) throws {
        let query = GetMe()
        execute(query: query, completion: completion)
    }

    /// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
    /// - Parameter userId: User identifier
    public func getUser(
        userId: Int64?
        , completion: @escaping (Result<User, Swift.Error>) -> Void
    ) throws {
        let query = GetUser(
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns full information about a user by their identifier
    /// - Parameter userId: User identifier
    public func getUserFullInfo(
        userId: Int64?
        , completion: @escaping (Result<UserFullInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetUserFullInfo(
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
    /// - Parameter basicGroupId: Basic group identifier
    public func getBasicGroup(
        basicGroupId: Int64?
        , completion: @escaping (Result<BasicGroup, Swift.Error>) -> Void
    ) throws {
        let query = GetBasicGroup(
            basicGroupId: basicGroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns full information about a basic group by its identifier
    /// - Parameter basicGroupId: Basic group identifier
    public func getBasicGroupFullInfo(
        basicGroupId: Int64?
        , completion: @escaping (Result<BasicGroupFullInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetBasicGroupFullInfo(
            basicGroupId: basicGroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
    /// - Parameter supergroupId: Supergroup or channel identifier
    public func getSupergroup(
        supergroupId: Int64?
        , completion: @escaping (Result<Supergroup, Swift.Error>) -> Void
    ) throws {
        let query = GetSupergroup(
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
    /// - Parameter supergroupId: Supergroup or channel identifier
    public func getSupergroupFullInfo(
        supergroupId: Int64?
        , completion: @escaping (Result<SupergroupFullInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetSupergroupFullInfo(
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a secret chat by its identifier. This is an offline request
    /// - Parameter secretChatId: Secret chat identifier
    public func getSecretChat(
        secretChatId: Int?
        , completion: @escaping (Result<SecretChat, Swift.Error>) -> Void
    ) throws {
        let query = GetSecretChat(
            secretChatId: secretChatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
    /// - Parameter chatId: Chat identifier
    public func getChat(
        chatId: Int64?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = GetChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a message
    /// - Parameter chatId: Identifier of the chat the message belongs to
    /// - Parameter messageId: Identifier of the message to get
    public func getMessage(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetMessage(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a message, if it is available locally without sending network request. This is an offline request
    /// - Parameter chatId: Identifier of the chat the message belongs to
    /// - Parameter messageId: Identifier of the message to get
    public func getMessageLocally(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageLocally(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
    /// - Parameter chatId: Identifier of the chat the message belongs to
    /// - Parameter messageId: Identifier of the reply message
    public func getRepliedMessage(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetRepliedMessage(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a newest pinned message in the chat
    /// - Parameter chatId: Identifier of the chat the message belongs to
    public func getChatPinnedMessage(
        chatId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetChatPinnedMessage(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a message with the callback button that originated a callback query; for bots only
    /// - Parameter callbackQueryId: Identifier of the callback query
    /// - Parameter chatId: Identifier of the chat the message belongs to
    /// - Parameter messageId: Message identifier
    public func getCallbackQueryMessage(
        callbackQueryId: TdInt64?,
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetCallbackQueryMessage(
            callbackQueryId: callbackQueryId,
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
    /// - Parameter chatId: Identifier of the chat the messages belong to
    /// - Parameter messageIds: Identifiers of the messages to get
    public func getMessages(
        chatId: Int64?,
        messageIds: [Int64]?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = GetMessages(
            chatId: chatId,
            messageIds: messageIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageId: Identifier of the message
    public func getMessageThread(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<MessageThreadInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageThread(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns viewers of a recent outgoing message in a basic group or a supergroup chat. For video notes and voice notes only users, opened content of the message, are returned. The method can be called if message.can_get_viewers == true
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageId: Identifier of the message
    public func getMessageViewers(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Users, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageViewers(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a file; this is an offline request
    /// - Parameter fileId: Identifier of the file to get
    public func getFile(
        fileId: Int?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = GetFile(
            fileId: fileId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
    /// - Parameter fileType: File type; pass null if unknown
    /// - Parameter remoteFileId: Remote identifier of the file to get
    public func getRemoteFile(
        fileType: FileType?,
        remoteFileId: String?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = GetRemoteFile(
            fileType: fileType,
            remoteFileId: remoteFileId
        )
        execute(query: query, completion: completion)
    }

    /// Loads more chats from a chat list. The loaded chats and their positions in the chat list will be sent through updates. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. Returns a 404 error if all chats has been loaded
    /// - Parameter chatList: The chat list in which to load chats; pass null to load chats from the main chat list
    /// - Parameter limit: The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
    public func loadChats(
        chatList: ChatList?,
        limit: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = LoadChats(
            chatList: chatList,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats and updates processing instead to maintain chat lists in a consistent state
    /// - Parameter chatList: The chat list in which to return chats; pass null to get chats from the main chat list
    /// - Parameter limit: The maximum number of chats to be returned
    public func getChats(
        chatList: ChatList?,
        limit: Int?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetChats(
            chatList: chatList,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Searches a public chat by its username. Currently only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
    /// - Parameter username: Username to be resolved
    public func searchPublicChat(
        username: String?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = SearchPublicChat(
            username: username
        )
        execute(query: query, completion: completion)
    }

    /// Searches public chats by looking for specified query in their username and title. Currently only private chats, supergroups and channels can be public. Returns a meaningful number of results. Excludes private chats with contacts and chats from the chat list from the results
    /// - Parameter query: Query to search for
    public func searchPublicChats(
        query: String?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = SearchPublicChats(
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
    /// - Parameter limit: The maximum number of chats to be returned
    /// - Parameter query: Query to search for. If the query is empty, returns up to 50 recently found chats
    public func searchChats(
        limit: Int?,
        query: String?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = SearchChats(
            limit: limit,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list
    /// - Parameter limit: The maximum number of chats to be returned
    /// - Parameter query: Query to search for
    public func searchChatsOnServer(
        limit: Int?,
        query: String?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = SearchChatsOnServer(
            limit: limit,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request must be sent again every 25 seconds with adjusted location to not miss new chats
    /// - Parameter location: Current user location
    public func searchChatsNearby(
        location: Location?
        , completion: @escaping (Result<ChatsNearby, Swift.Error>) -> Void
    ) throws {
        let query = SearchChatsNearby(
            location: location
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of frequently used chats. Supported only if the chat info database is enabled
    /// - Parameter category: Category of chats to be returned
    /// - Parameter limit: The maximum number of chats to be returned; up to 30
    public func getTopChats(
        category: TopChatCategory?,
        limit: Int?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetTopChats(
            category: category,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
    /// - Parameter category: Category of frequently used chats
    /// - Parameter chatId: Chat identifier
    public func removeTopChat(
        category: TopChatCategory?,
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveTopChat(
            category: category,
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first
    /// - Parameter chatId: Identifier of the chat to add
    public func addRecentlyFoundChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddRecentlyFoundChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Removes a chat from the list of recently found chats
    /// - Parameter chatId: Identifier of the chat to be removed
    public func removeRecentlyFoundChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveRecentlyFoundChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Clears the list of recently found chats
    public func clearRecentlyFoundChats(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ClearRecentlyFoundChats()
        execute(query: query, completion: completion)
    }

    /// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening
    /// - Parameter limit: The maximum number of chats to be returned
    public func getRecentlyOpenedChats(
        limit: Int?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetRecentlyOpenedChats(
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Checks whether a username can be set for a chat
    /// - Parameter chatId: Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created
    /// - Parameter username: Username to be checked
    public func checkChatUsername(
        chatId: Int64?,
        username: String?
        , completion: @escaping (Result<CheckChatUsernameResult, Swift.Error>) -> Void
    ) throws {
        let query = CheckChatUsername(
            chatId: chatId,
            username: username
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of public chats of the specified type, owned by the user
    /// - Parameter type: Type of the public chats to return
    public func getCreatedPublicChats(
        type: PublicChatType?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetCreatedPublicChats(
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached
    /// - Parameter type: Type of the public chats, for which to check the limit
    public func checkCreatedPublicChatsLimit(
        type: PublicChatType?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckCreatedPublicChatsLimit(
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
    public func getSuitableDiscussionChats(, completion: @escaping (Result<Chats, Swift.Error>) -> Void) throws {
        let query = GetSuitableDiscussionChats()
        execute(query: query, completion: completion)
    }

    /// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error
    public func getInactiveSupergroupChats(, completion: @escaping (Result<Chats, Swift.Error>) -> Void) throws {
        let query = GetInactiveSupergroupChats()
        execute(query: query, completion: completion)
    }

    /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
    /// - Parameter limit: The maximum number of chats to be returned; up to 100
    /// - Parameter offsetChatId: Chat identifier starting from which to return chats; use 0 for the first request
    /// - Parameter userId: User identifier
    public func getGroupsInCommon(
        limit: Int?,
        offsetChatId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetGroupsInCommon(
            limit: limit,
            offsetChatId: offsetChatId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib. This is an offline request if only_local is true
    /// - Parameter chatId: Chat identifier
    /// - Parameter fromMessageId: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    /// - Parameter limit: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter offset: Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
    /// - Parameter onlyLocal: If true, returns only messages that are available locally without sending network requests
    public func getChatHistory(
        chatId: Int64?,
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?,
        onlyLocal: Bool?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = GetChatHistory(
            chatId: chatId,
            fromMessageId: fromMessageId,
            limit: limit,
            offset: offset,
            onlyLocal: onlyLocal
        )
        execute(query: query, completion: completion)
    }

    /// Returns messages in a message thread of a message. Can be used only if message.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
    /// - Parameter chatId: Chat identifier
    /// - Parameter fromMessageId: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    /// - Parameter limit: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter messageId: Message identifier, which thread history needs to be returned
    /// - Parameter offset: Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
    public func getMessageThreadHistory(
        chatId: Int64?,
        fromMessageId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: Int?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageThreadHistory(
            chatId: chatId,
            fromMessageId: fromMessageId,
            limit: limit,
            messageId: messageId,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all messages in the chat. Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter removeFromChatList: Pass true if the chat needs to be removed from the chat list
    /// - Parameter revoke: Pass true to try to delete chat history for all users
    public func deleteChatHistory(
        chatId: Int64?,
        removeFromChatList: Bool?,
        revoke: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChatHistory(
            chatId: chatId,
            removeFromChatList: removeFromChatList,
            revoke: revoke
        )
        execute(query: query, completion: completion)
    }

    /// Deletes a chat along with all messages in the corresponding chat for all chat members; requires owner privileges. For group chats this will release the username and remove all members. Chats with more than 1000 members can't be deleted using this method
    /// - Parameter chatId: Chat identifier
    public func deleteChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query (searchSecretMessages must be used instead), or without an enabled message database. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter chatId: Identifier of the chat in which to search messages
    /// - Parameter filter: Additional filter for messages to search; pass null to search for all messages
    /// - Parameter fromMessageId: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    /// - Parameter limit: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter messageThreadId: If not 0, only messages in the specified thread will be returned; supergroups only
    /// - Parameter offset: Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages
    /// - Parameter query: Query to search for
    /// - Parameter sender: Sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats
    public func searchChatMessages(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        limit: Int?,
        messageThreadId: Int64?,
        offset: Int?,
        query: String?,
        sender: MessageSender?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = SearchChatMessages(
            chatId: chatId,
            filter: filter,
            fromMessageId: fromMessageId,
            limit: limit,
            messageThreadId: messageThreadId,
            offset: offset,
            query: query,
            sender: sender
        )
        execute(query: query, completion: completion)
    }

    /// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)). For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter chatList: Chat list in which to search messages; pass null to search in all chats regardless of their chat list. Only Main and Archive chat lists are supported
    /// - Parameter filter: Additional filter for messages to search; pass null to search for all messages. Filters searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and searchMessagesFilterPinned are unsupported in this function
    /// - Parameter limit: The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter maxDate: If not 0, the maximum date of the messages to return
    /// - Parameter minDate: If not 0, the minimum date of the messages to return
    /// - Parameter offsetChatId: The chat identifier of the last found message, or 0 for the first request
    /// - Parameter offsetDate: The date of the message starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last message
    /// - Parameter offsetMessageId: The message identifier of the last found message, or 0 for the first request
    /// - Parameter query: Query to search for
    public func searchMessages(
        chatList: ChatList?,
        filter: SearchMessagesFilter?,
        limit: Int?,
        maxDate: Int?,
        minDate: Int?,
        offsetChatId: Int64?,
        offsetDate: Int?,
        offsetMessageId: Int64?,
        query: String?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = SearchMessages(
            chatList: chatList,
            filter: filter,
            limit: limit,
            maxDate: maxDate,
            minDate: minDate,
            offsetChatId: offsetChatId,
            offsetDate: offsetDate,
            offsetMessageId: offsetMessageId,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib
    /// - Parameter chatId: Identifier of the chat in which to search. Specify 0 to search in all secret chats
    /// - Parameter filter: Additional filter for messages to search; pass null to search for all messages
    /// - Parameter limit: The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter offset: Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
    /// - Parameter query: Query to search for. If empty, searchChatMessages must be used instead
    public func searchSecretMessages(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        limit: Int?,
        offset: String?,
        query: String?
        , completion: @escaping (Result<FoundMessages, Swift.Error>) -> Void
    ) throws {
        let query = SearchSecretMessages(
            chatId: chatId,
            filter: filter,
            limit: limit,
            offset: offset,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
    /// - Parameter fromMessageId: Identifier of the message from which to search; use 0 to get results from the last message
    /// - Parameter limit: The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter onlyMissed: If true, returns only messages with missed calls
    public func searchCallMessages(
        fromMessageId: Int64?,
        limit: Int?,
        onlyMissed: Bool?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = SearchCallMessages(
            fromMessageId: fromMessageId,
            limit: limit,
            onlyMissed: onlyMissed
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all call messages
    /// - Parameter revoke: Pass true to delete the messages for all users
    public func deleteAllCallMessages(
        revoke: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteAllCallMessages(
            revoke: revoke
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
    /// - Parameter chatId: Chat identifier
    /// - Parameter limit: The maximum number of messages to be returned
    public func searchChatRecentLocationMessages(
        chatId: Int64?,
        limit: Int?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = SearchChatRecentLocationMessages(
            chatId: chatId,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used
    public func getActiveLiveLocationMessages(, completion: @escaping (Result<Messages, Swift.Error>) -> Void) throws {
        let query = GetActiveLiveLocationMessages()
        execute(query: query, completion: completion)
    }

    /// Returns the last message sent in a chat no later than the specified date
    /// - Parameter chatId: Chat identifier
    /// - Parameter date: Point in time (Unix timestamp) relative to which to search for messages
    public func getChatMessageByDate(
        chatId: Int64?,
        date: Int?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = GetChatMessageByDate(
            chatId: chatId,
            date: date
        )
        execute(query: query, completion: completion)
    }

    /// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id). Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database
    /// - Parameter chatId: Identifier of the chat in which to return information about message positions
    /// - Parameter filter: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
    /// - Parameter fromMessageId: The message identifier from which to return information about message positions
    /// - Parameter limit: The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages
    public func getChatSparseMessagePositions(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        limit: Int?
        , completion: @escaping (Result<MessagePositions, Swift.Error>) -> Void
    ) throws {
        let query = GetChatSparseMessagePositions(
            chatId: chatId,
            filter: filter,
            fromMessageId: fromMessageId,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about the next messages of the specified type in the chat splitted by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset"
    /// - Parameter chatId: Identifier of the chat in which to return information about messages
    /// - Parameter filter: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
    /// - Parameter fromMessageId: The message identifier from which to return information about messages; use 0 to get results from the last message
    public func getChatMessageCalendar(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?
        , completion: @escaping (Result<MessageCalendar, Swift.Error>) -> Void
    ) throws {
        let query = GetChatMessageCalendar(
            chatId: chatId,
            filter: filter,
            fromMessageId: fromMessageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns approximate number of messages of the specified type in the chat
    /// - Parameter chatId: Identifier of the chat in which to count messages
    /// - Parameter filter: Filter for message content; searchMessagesFilterEmpty is unsupported in this function
    /// - Parameter returnLocal: If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
    public func getChatMessageCount(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        returnLocal: Bool?
        , completion: @escaping (Result<Count, Swift.Error>) -> Void
    ) throws {
        let query = GetChatMessageCount(
            chatId: chatId,
            filter: filter,
            returnLocal: returnLocal
        )
        execute(query: query, completion: completion)
    }

    /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
    /// - Parameter chatId: Chat identifier
    public func getChatScheduledMessages(
        chatId: Int64?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = GetChatScheduledMessages(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns forwarded copies of a channel message to different public channels. For optimal performance, the number of returned messages is chosen by TDLib
    /// - Parameter chatId: Chat identifier of the message
    /// - Parameter limit: The maximum number of messages to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    /// - Parameter messageId: Message identifier
    /// - Parameter offset: Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
    public func getMessagePublicForwards(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: String?
        , completion: @escaping (Result<FoundMessages, Swift.Error>) -> Void
    ) throws {
        let query = GetMessagePublicForwards(
            chatId: chatId,
            limit: limit,
            messageId: messageId,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Returns sponsored messages to be shown in a chat; for channel chats only
    /// - Parameter chatId: Identifier of the chat
    public func getChatSponsoredMessages(
        chatId: Int64?
        , completion: @escaping (Result<SponsoredMessages, Swift.Error>) -> Void
    ) throws {
        let query = GetChatSponsoredMessages(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that a sponsored message was viewed by the user
    /// - Parameter chatId: Identifier of the chat with the sponsored message
    /// - Parameter sponsoredMessageId: The identifier of the sponsored message being viewed
    public func viewSponsoredMessage(
        chatId: Int64?,
        sponsoredMessageId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ViewSponsoredMessage(
            chatId: chatId,
            sponsoredMessageId: sponsoredMessageId
        )
        execute(query: query, completion: completion)
    }

    /// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user
    /// - Parameter notificationGroupId: Identifier of notification group to which the notification belongs
    /// - Parameter notificationId: Identifier of removed notification
    public func removeNotification(
        notificationGroupId: Int?,
        notificationId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveNotification(
            notificationGroupId: notificationGroupId,
            notificationId: notificationId
        )
        execute(query: query, completion: completion)
    }

    /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
    /// - Parameter maxNotificationId: The maximum identifier of removed notifications
    /// - Parameter notificationGroupId: Notification group identifier
    public func removeNotificationGroup(
        maxNotificationId: Int?,
        notificationGroupId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveNotificationGroup(
            maxNotificationId: maxNotificationId,
            notificationGroupId: notificationGroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels, or if message.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline request
    /// - Parameter chatId: Identifier of the chat to which the message belongs
    /// - Parameter forAlbum: Pass true to create a link for the whole media album
    /// - Parameter forComment: Pass true to create a link to the message as a channel post comment, or from a message thread
    /// - Parameter mediaTimestamp: If not 0, timestamp from which the video/audio/video note/voice note playing must start, in seconds. The media can be in the message content or in its web page preview
    /// - Parameter messageId: Identifier of the message
    public func getMessageLink(
        chatId: Int64?,
        forAlbum: Bool?,
        forComment: Bool?,
        mediaTimestamp: Int?,
        messageId: Int64?
        , completion: @escaping (Result<MessageLink, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageLink(
            chatId: chatId,
            forAlbum: forAlbum,
            forComment: forComment,
            mediaTimestamp: mediaTimestamp,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
    /// - Parameter chatId: Identifier of the chat to which the message belongs
    /// - Parameter forAlbum: Pass true to return an HTML code for embedding of the whole media album
    /// - Parameter messageId: Identifier of the message
    public func getMessageEmbeddingCode(
        chatId: Int64?,
        forAlbum: Bool?,
        messageId: Int64?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageEmbeddingCode(
            chatId: chatId,
            forAlbum: forAlbum,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
    /// - Parameter url: The message link
    public func getMessageLinkInfo(
        url: String?
        , completion: @escaping (Result<MessageLinkInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageLinkInfo(
            url: url
        )
        execute(query: query, completion: completion)
    }

    /// Sends a message. Returns the sent message
    /// - Parameter chatId: Target chat
    /// - Parameter inputMessageContent: The content of the message to be sent
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the message will be sent
    /// - Parameter options: Options to be used to send the message; pass null to use default options
    /// - Parameter replyMarkup: Markup for replying to the message; pass null if none; for bots only
    /// - Parameter replyToMessageId: Identifier of the message to reply to or 0
    public func sendMessage(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        replyMarkup: ReplyMarkup?,
        replyToMessageId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = SendMessage(
            chatId: chatId,
            inputMessageContent: inputMessageContent,
            messageThreadId: messageThreadId,
            options: options,
            replyMarkup: replyMarkup,
            replyToMessageId: replyToMessageId
        )
        execute(query: query, completion: completion)
    }

    /// Sends 2-10 messages grouped together into an album. Currently only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
    /// - Parameter chatId: Target chat
    /// - Parameter inputMessageContents: Contents of messages to be sent. At most 10 messages can be added to an album
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the messages will be sent
    /// - Parameter options: Options to be used to send the messages; pass null to use default options
    /// - Parameter replyToMessageId: Identifier of a message to reply to or 0
    public func sendMessageAlbum(
        chatId: Int64?,
        inputMessageContents: [InputMessageContent]?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        replyToMessageId: Int64?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = SendMessageAlbum(
            chatId: chatId,
            inputMessageContents: inputMessageContents,
            messageThreadId: messageThreadId,
            options: options,
            replyToMessageId: replyToMessageId
        )
        execute(query: query, completion: completion)
    }

    /// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message
    /// - Parameter botUserId: Identifier of the bot
    /// - Parameter chatId: Identifier of the target chat
    /// - Parameter parameter: A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
    public func sendBotStartMessage(
        botUserId: Int64?,
        chatId: Int64?,
        parameter: String?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = SendBotStartMessage(
            botUserId: botUserId,
            chatId: chatId,
            parameter: parameter
        )
        execute(query: query, completion: completion)
    }

    /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
    /// - Parameter chatId: Target chat
    /// - Parameter hideViaBot: If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the message will be sent
    /// - Parameter options: Options to be used to send the message; pass null to use default options
    /// - Parameter queryId: Identifier of the inline query
    /// - Parameter replyToMessageId: Identifier of a message to reply to or 0
    /// - Parameter resultId: Identifier of the inline result
    public func sendInlineQueryResultMessage(
        chatId: Int64?,
        hideViaBot: Bool?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        queryId: TdInt64?,
        replyToMessageId: Int64?,
        resultId: String?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = SendInlineQueryResultMessage(
            chatId: chatId,
            hideViaBot: hideViaBot,
            messageThreadId: messageThreadId,
            options: options,
            queryId: queryId,
            replyToMessageId: replyToMessageId,
            resultId: resultId
        )
        execute(query: query, completion: completion)
    }

    /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
    /// - Parameter chatId: Identifier of the chat to which to forward messages
    /// - Parameter fromChatId: Identifier of the chat from which to forward messages
    /// - Parameter messageIds: Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
    /// - Parameter onlyPreview: If true, messages will not be forwarded and instead fake messages will be returned
    /// - Parameter options: Options to be used to send the messages; pass null to use default options
    /// - Parameter removeCaption: If true, media caption of message copies will be removed. Ignored if send_copy is false
    /// - Parameter sendCopy: If true, content of the messages will be copied without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local
    public func forwardMessages(
        chatId: Int64?,
        fromChatId: Int64?,
        messageIds: [Int64]?,
        onlyPreview: Bool?,
        options: MessageSendOptions?,
        removeCaption: Bool?,
        sendCopy: Bool?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = ForwardMessages(
            chatId: chatId,
            fromChatId: fromChatId,
            messageIds: messageIds,
            onlyPreview: onlyPreview,
            options: options,
            removeCaption: removeCaption,
            sendCopy: sendCopy
        )
        execute(query: query, completion: completion)
    }

    /// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message
    /// - Parameter chatId: Identifier of the chat to send messages
    /// - Parameter messageIds: Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
    public func resendMessages(
        chatId: Int64?,
        messageIds: [Int64]?
        , completion: @escaping (Result<Messages, Swift.Error>) -> Void
    ) throws {
        let query = ResendMessages(
            chatId: chatId,
            messageIds: messageIds
        )
        execute(query: query, completion: completion)
    }

    /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
    /// - Parameter chatId: Chat identifier
    public func sendChatScreenshotTakenNotification(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendChatScreenshotTakenNotification(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
    /// - Parameter chatId: Target chat
    /// - Parameter disableNotification: Pass true to disable notification for the message
    /// - Parameter inputMessageContent: The content of the message to be added
    /// - Parameter replyToMessageId: Identifier of the message to reply to or 0
    /// - Parameter sender: The sender of the message
    public func addLocalMessage(
        chatId: Int64?,
        disableNotification: Bool?,
        inputMessageContent: InputMessageContent?,
        replyToMessageId: Int64?,
        sender: MessageSender?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = AddLocalMessage(
            chatId: chatId,
            disableNotification: disableNotification,
            inputMessageContent: inputMessageContent,
            replyToMessageId: replyToMessageId,
            sender: sender
        )
        execute(query: query, completion: completion)
    }

    /// Deletes messages
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageIds: Identifiers of the messages to be deleted
    /// - Parameter revoke: Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats
    public func deleteMessages(
        chatId: Int64?,
        messageIds: [Int64]?,
        revoke: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteMessages(
            chatId: chatId,
            messageIds: messageIds,
            revoke: revoke
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all messages sent by the specified user to a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
    /// - Parameter chatId: Chat identifier
    /// - Parameter userId: User identifier
    public func deleteChatMessagesFromUser(
        chatId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChatMessagesFromUser(
            chatId: chatId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all messages between the specified dates in a chat. Supported only for private chats and basic groups. Messages sent in the last 30 seconds will not be deleted
    /// - Parameter chatId: Chat identifier
    /// - Parameter maxDate: The maximum date of the messages to delete
    /// - Parameter minDate: The minimum date of the messages to delete
    /// - Parameter revoke: Pass true to try to delete chat messages for all users; private chats only
    public func deleteChatMessagesByDate(
        chatId: Int64?,
        maxDate: Int?,
        minDate: Int?,
        revoke: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChatMessagesByDate(
            chatId: chatId,
            maxDate: maxDate,
            minDate: minDate,
            revoke: revoke
        )
        execute(query: query, completion: completion)
    }

    /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter inputMessageContent: New text content of the message. Must be of type inputMessageText
    /// - Parameter messageId: Identifier of the message
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func editMessageText(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageText(
            chatId: chatId,
            inputMessageContent: inputMessageContent,
            messageId: messageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter heading: The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
    /// - Parameter location: New location content of the message; pass null to stop sharing the live location
    /// - Parameter messageId: Identifier of the message
    /// - Parameter proximityAlertRadius: The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func editMessageLiveLocation(
        chatId: Int64?,
        heading: Int?,
        location: Location?,
        messageId: Int64?,
        proximityAlertRadius: Int?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageLiveLocation(
            chatId: chatId,
            heading: heading,
            location: location,
            messageId: messageId,
            proximityAlertRadius: proximityAlertRadius,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the content of a message with an animation, an audio, a document, a photo or a video, including message caption. If only the caption needs to be edited, use editMessageCaption instead. The media can't be edited if the message was set to self-destruct or to a self-destructing media. The type of message content in an album can't be changed with exception of replacing a photo with a video or vice versa. Returns the edited message after the edit is completed on the server side
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter inputMessageContent: New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
    /// - Parameter messageId: Identifier of the message
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func editMessageMedia(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageMedia(
            chatId: chatId,
            inputMessageContent: inputMessageContent,
            messageId: messageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the message content caption. Returns the edited message after the edit is completed on the server side
    /// - Parameter caption: New message content caption; 0-GetOption("message_caption_length_max") characters; pass null to remove caption
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter messageId: Identifier of the message
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func editMessageCaption(
        caption: FormattedText?,
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageCaption(
            caption: caption,
            chatId: chatId,
            messageId: messageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter messageId: Identifier of the message
    /// - Parameter replyMarkup: The new message reply markup; pass null if none
    public func editMessageReplyMarkup(
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageReplyMarkup(
            chatId: chatId,
            messageId: messageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the text of an inline text or game message sent via a bot; for bots only
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter inputMessageContent: New text content of the message. Must be of type inputMessageText
    /// - Parameter replyMarkup: The new message reply markup; pass null if none
    public func editInlineMessageText(
        inlineMessageId: String?,
        inputMessageContent: InputMessageContent?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditInlineMessageText(
            inlineMessageId: inlineMessageId,
            inputMessageContent: inputMessageContent,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the content of a live location in an inline message sent via a bot; for bots only
    /// - Parameter heading: The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter location: New location content of the message; pass null to stop sharing the live location
    /// - Parameter proximityAlertRadius: The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
    /// - Parameter replyMarkup: The new message reply markup; pass null if none
    public func editInlineMessageLiveLocation(
        heading: Int?,
        inlineMessageId: String?,
        location: Location?,
        proximityAlertRadius: Int?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditInlineMessageLiveLocation(
            heading: heading,
            inlineMessageId: inlineMessageId,
            location: location,
            proximityAlertRadius: proximityAlertRadius,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter inputMessageContent: New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func editInlineMessageMedia(
        inlineMessageId: String?,
        inputMessageContent: InputMessageContent?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditInlineMessageMedia(
            inlineMessageId: inlineMessageId,
            inputMessageContent: inputMessageContent,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the caption of an inline message sent via a bot; for bots only
    /// - Parameter caption: New message content caption; pass null to remove caption; 0-GetOption("message_caption_length_max") characters
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter replyMarkup: The new message reply markup; pass null if none
    public func editInlineMessageCaption(
        caption: FormattedText?,
        inlineMessageId: String?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditInlineMessageCaption(
            caption: caption,
            inlineMessageId: inlineMessageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the reply markup of an inline message sent via a bot; for bots only
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter replyMarkup: The new message reply markup; pass null if none
    public func editInlineMessageReplyMarkup(
        inlineMessageId: String?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditInlineMessageReplyMarkup(
            inlineMessageId: inlineMessageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
    /// - Parameter chatId: The chat the message belongs to
    /// - Parameter messageId: Identifier of the message
    /// - Parameter schedulingState: The new message scheduling state; pass null to send the message immediately
    public func editMessageSchedulingState(
        chatId: Int64?,
        messageId: Int64?,
        schedulingState: MessageSchedulingState?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditMessageSchedulingState(
            chatId: chatId,
            messageId: messageId,
            schedulingState: schedulingState
        )
        execute(query: query, completion: completion)
    }

    /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
    /// - Parameter text: The text in which to look for entites
    public func getTextEntities(
        text: String?
        , completion: @escaping (Result<TextEntities, Swift.Error>) -> Void
    ) throws {
        let query = GetTextEntities(
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
    /// - Parameter parseMode: Text parse mode
    /// - Parameter text: The text to parse
    public func parseTextEntities(
        parseMode: TextParseMode?,
        text: String?
        , completion: @escaping (Result<FormattedText, Swift.Error>) -> Void
    ) throws {
        let query = ParseTextEntities(
            parseMode: parseMode,
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
    /// - Parameter text: The text to parse. For example, "__italic__ ~~strikethrough~~ **bold** `code` ```pre``` __[italic__ text_url](telegram.org) __italic**bold italic__bold**"
    public func parseMarkdown(
        text: FormattedText?
        , completion: @escaping (Result<FormattedText, Swift.Error>) -> Void
    ) throws {
        let query = ParseMarkdown(
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
    /// - Parameter text: The text
    public func getMarkdownText(
        text: FormattedText?
        , completion: @escaping (Result<FormattedText, Swift.Error>) -> Void
    ) throws {
        let query = GetMarkdownText(
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
    /// - Parameter fileName: The name of the file or path to the file
    public func getFileMimeType(
        fileName: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetFileMimeType(
            fileName: fileName
        )
        execute(query: query, completion: completion)
    }

    /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
    /// - Parameter mimeType: The MIME type of the file
    public func getFileExtension(
        mimeType: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetFileExtension(
            mimeType: mimeType
        )
        execute(query: query, completion: completion)
    }

    /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
    /// - Parameter fileName: File name or path to the file
    public func cleanFileName(
        fileName: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = CleanFileName(
            fileName: fileName
        )
        execute(query: query, completion: completion)
    }

    /// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
    /// - Parameter key: Language pack key of the string to be returned
    /// - Parameter languagePackDatabasePath: Path to the language pack database in which strings are stored
    /// - Parameter languagePackId: Language pack identifier
    /// - Parameter localizationTarget: Localization target to which the language pack belongs
    public func getLanguagePackString(
        key: String?,
        languagePackDatabasePath: String?,
        languagePackId: String?,
        localizationTarget: String?
        , completion: @escaping (Result<LanguagePackStringValue, Swift.Error>) -> Void
    ) throws {
        let query = GetLanguagePackString(
            key: key,
            languagePackDatabasePath: languagePackDatabasePath,
            languagePackId: languagePackId,
            localizationTarget: localizationTarget
        )
        execute(query: query, completion: completion)
    }

    /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
    /// - Parameter json: The JSON-serialized string
    public func getJsonValue(
        json: String?
        , completion: @escaping (Result<JsonValue, Swift.Error>) -> Void
    ) throws {
        let query = GetJsonValue(
            json: json
        )
        execute(query: query, completion: completion)
    }

    /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
    /// - Parameter jsonValue: The JsonValue object
    public func getJsonString(
        jsonValue: JsonValue?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetJsonString(
            jsonValue: jsonValue
        )
        execute(query: query, completion: completion)
    }

    /// Changes the user answer to a poll. A poll in quiz mode can be answered only once
    /// - Parameter chatId: Identifier of the chat to which the poll belongs
    /// - Parameter messageId: Identifier of the message containing the poll
    /// - Parameter optionIds: 0-based identifiers of answer options, chosen by the user. User can choose more than 1 answer option only is the poll allows multiple answers
    public func setPollAnswer(
        chatId: Int64?,
        messageId: Int64?,
        optionIds: [Int]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetPollAnswer(
            chatId: chatId,
            messageId: messageId,
            optionIds: optionIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns users voted for the specified option in a non-anonymous polls. For optimal performance, the number of returned users is chosen by TDLib
    /// - Parameter chatId: Identifier of the chat to which the poll belongs
    /// - Parameter limit: The maximum number of users to be returned; must be positive and can't be greater than 50. For optimal performance, the number of returned users is chosen by TDLib and can be smaller than the specified limit, even if the end of the voter list has not been reached
    /// - Parameter messageId: Identifier of the message containing the poll
    /// - Parameter offset: Number of users to skip in the result; must be non-negative
    /// - Parameter optionId: 0-based identifier of the answer option
    public func getPollVoters(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: Int?,
        optionId: Int?
        , completion: @escaping (Result<Users, Swift.Error>) -> Void
    ) throws {
        let query = GetPollVoters(
            chatId: chatId,
            limit: limit,
            messageId: messageId,
            offset: offset,
            optionId: optionId
        )
        execute(query: query, completion: completion)
    }

    /// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set
    /// - Parameter chatId: Identifier of the chat to which the poll belongs
    /// - Parameter messageId: Identifier of the message containing the poll
    /// - Parameter replyMarkup: The new message reply markup; pass null if none; for bots only
    public func stopPoll(
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = StopPoll(
            chatId: chatId,
            messageId: messageId,
            replyMarkup: replyMarkup
        )
        execute(query: query, completion: completion)
    }

    /// Hides a suggested action
    /// - Parameter action: Suggested action to hide
    public func hideSuggestedAction(
        action: SuggestedAction?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = HideSuggestedAction(
            action: action
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
    /// - Parameter buttonId: Button identifier
    /// - Parameter chatId: Chat identifier of the message with the button
    /// - Parameter messageId: Message identifier of the message with the button
    public func getLoginUrlInfo(
        buttonId: Int64?,
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<LoginUrlInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetLoginUrlInfo(
            buttonId: buttonId,
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button
    /// - Parameter allowWriteAccess: True, if the user allowed the bot to send them messages
    /// - Parameter buttonId: Button identifier
    /// - Parameter chatId: Chat identifier of the message with the button
    /// - Parameter messageId: Message identifier of the message with the button
    public func getLoginUrl(
        allowWriteAccess: Bool?,
        buttonId: Int64?,
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetLoginUrl(
            allowWriteAccess: allowWriteAccess,
            buttonId: buttonId,
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
    /// - Parameter botUserId: The identifier of the target bot
    /// - Parameter chatId: Identifier of the chat where the query was sent
    /// - Parameter offset: Offset of the first entry to return
    /// - Parameter query: Text of the query
    /// - Parameter userLocation: Location of the user; pass null if unknown or the bot doesn't need user's location
    public func getInlineQueryResults(
        botUserId: Int64?,
        chatId: Int64?,
        offset: String?,
        query: String?,
        userLocation: Location?
        , completion: @escaping (Result<InlineQueryResults, Swift.Error>) -> Void
    ) throws {
        let query = GetInlineQueryResults(
            botUserId: botUserId,
            chatId: chatId,
            offset: offset,
            query: query,
            userLocation: userLocation
        )
        execute(query: query, completion: completion)
    }

    /// Sets the result of an inline query; for bots only
    /// - Parameter cacheTime: Allowed time to cache the results of the query, in seconds
    /// - Parameter inlineQueryId: Identifier of the inline query
    /// - Parameter isPersonal: True, if the result of the query can be cached for the specified user
    /// - Parameter nextOffset: Offset for the next inline query; pass an empty string if there are no more results
    /// - Parameter results: The results of the query
    /// - Parameter switchPmParameter: The parameter for the bot start message
    /// - Parameter switchPmText: If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
    public func answerInlineQuery(
        cacheTime: Int?,
        inlineQueryId: TdInt64?,
        isPersonal: Bool?,
        nextOffset: String?,
        results: [InputInlineQueryResult]?,
        switchPmParameter: String?,
        switchPmText: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AnswerInlineQuery(
            cacheTime: cacheTime,
            inlineQueryId: inlineQueryId,
            isPersonal: isPersonal,
            nextOffset: nextOffset,
            results: results,
            switchPmParameter: switchPmParameter,
            switchPmText: switchPmText
        )
        execute(query: query, completion: completion)
    }

    /// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
    /// - Parameter chatId: Identifier of the chat with the message
    /// - Parameter messageId: Identifier of the message from which the query originated
    /// - Parameter payload: Query payload
    public func getCallbackQueryAnswer(
        chatId: Int64?,
        messageId: Int64?,
        payload: CallbackQueryPayload?
        , completion: @escaping (Result<CallbackQueryAnswer, Swift.Error>) -> Void
    ) throws {
        let query = GetCallbackQueryAnswer(
            chatId: chatId,
            messageId: messageId,
            payload: payload
        )
        execute(query: query, completion: completion)
    }

    /// Sets the result of a callback query; for bots only
    /// - Parameter cacheTime: Time during which the result of the query can be cached, in seconds
    /// - Parameter callbackQueryId: Identifier of the callback query
    /// - Parameter showAlert: If true, an alert must be shown to the user instead of a toast notification
    /// - Parameter text: Text of the answer
    /// - Parameter url: URL to be opened
    public func answerCallbackQuery(
        cacheTime: Int?,
        callbackQueryId: TdInt64?,
        showAlert: Bool?,
        text: String?,
        url: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AnswerCallbackQuery(
            cacheTime: cacheTime,
            callbackQueryId: callbackQueryId,
            showAlert: showAlert,
            text: text,
            url: url
        )
        execute(query: query, completion: completion)
    }

    /// Sets the result of a shipping query; for bots only
    /// - Parameter errorMessage: An error message, empty on success
    /// - Parameter shippingOptions: Available shipping options
    /// - Parameter shippingQueryId: Identifier of the shipping query
    public func answerShippingQuery(
        errorMessage: String?,
        shippingOptions: [ShippingOption]?,
        shippingQueryId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AnswerShippingQuery(
            errorMessage: errorMessage,
            shippingOptions: shippingOptions,
            shippingQueryId: shippingQueryId
        )
        execute(query: query, completion: completion)
    }

    /// Sets the result of a pre-checkout query; for bots only
    /// - Parameter errorMessage: An error message, empty on success
    /// - Parameter preCheckoutQueryId: Identifier of the pre-checkout query
    public func answerPreCheckoutQuery(
        errorMessage: String?,
        preCheckoutQueryId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AnswerPreCheckoutQuery(
            errorMessage: errorMessage,
            preCheckoutQueryId: preCheckoutQueryId
        )
        execute(query: query, completion: completion)
    }

    /// Updates the game score of the specified user in the game; for bots only
    /// - Parameter chatId: The chat to which the message with the game belongs
    /// - Parameter editMessage: True, if the message needs to be edited
    /// - Parameter force: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
    /// - Parameter messageId: Identifier of the message
    /// - Parameter score: The new score
    /// - Parameter userId: User identifier
    public func setGameScore(
        chatId: Int64?,
        editMessage: Bool?,
        force: Bool?,
        messageId: Int64?,
        score: Int?,
        userId: Int64?
        , completion: @escaping (Result<Message, Swift.Error>) -> Void
    ) throws {
        let query = SetGameScore(
            chatId: chatId,
            editMessage: editMessage,
            force: force,
            messageId: messageId,
            score: score,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Updates the game score of the specified user in a game; for bots only
    /// - Parameter editMessage: True, if the message needs to be edited
    /// - Parameter force: Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter score: The new score
    /// - Parameter userId: User identifier
    public func setInlineGameScore(
        editMessage: Bool?,
        force: Bool?,
        inlineMessageId: String?,
        score: Int?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetInlineGameScore(
            editMessage: editMessage,
            force: force,
            inlineMessageId: inlineMessageId,
            score: score,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
    /// - Parameter chatId: The chat that contains the message with the game
    /// - Parameter messageId: Identifier of the message
    /// - Parameter userId: User identifier
    public func getGameHighScores(
        chatId: Int64?,
        messageId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<GameHighScores, Swift.Error>) -> Void
    ) throws {
        let query = GetGameHighScores(
            chatId: chatId,
            messageId: messageId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
    /// - Parameter inlineMessageId: Inline message identifier
    /// - Parameter userId: User identifier
    public func getInlineGameHighScores(
        inlineMessageId: String?,
        userId: Int64?
        , completion: @escaping (Result<GameHighScores, Swift.Error>) -> Void
    ) throws {
        let query = GetInlineGameHighScores(
            inlineMessageId: inlineMessageId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup is changed
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageId: The message identifier of the used keyboard
    public func deleteChatReplyMarkup(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChatReplyMarkup(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Sends a notification about user activity in a chat
    /// - Parameter action: The action description; pass null to cancel the currently active action
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the action was performed
    public func sendChatAction(
        action: ChatAction?,
        chatId: Int64?,
        messageThreadId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendChatAction(
            action: action,
            chatId: chatId,
            messageThreadId: messageThreadId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats)
    /// - Parameter chatId: Chat identifier
    public func openChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = OpenChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
    /// - Parameter chatId: Chat identifier
    public func closeChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CloseChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
    /// - Parameter chatId: Chat identifier
    /// - Parameter forceRead: True, if messages in closed chats must be marked as read by the request
    /// - Parameter messageIds: The identifiers of the messages being viewed
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the messages are being viewed
    public func viewMessages(
        chatId: Int64?,
        forceRead: Bool?,
        messageIds: [Int64]?,
        messageThreadId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ViewMessages(
            chatId: chatId,
            forceRead: forceRead,
            messageIds: messageIds,
            messageThreadId: messageThreadId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed
    /// - Parameter chatId: Chat identifier of the message
    /// - Parameter messageId: Identifier of the message with the opened content
    public func openMessageContent(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = OpenMessageContent(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that a message with an animated emoji was clicked by the user. Returns a big animated sticker to be played or a 404 error if usual animation needs to be played
    /// - Parameter chatId: Chat identifier of the message
    /// - Parameter messageId: Identifier of the clicked message
    public func clickAnimatedEmojiMessage(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Sticker, Swift.Error>) -> Void
    ) throws {
        let query = ClickAnimatedEmojiMessage(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
    /// - Parameter link: The link
    public func getInternalLinkType(
        link: String?
        , completion: @escaping (Result<InternalLinkType, Swift.Error>) -> Void
    ) throws {
        let query = GetInternalLinkType(
            link: link
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats
    /// - Parameter link: The link
    public func getExternalLinkInfo(
        link: String?
        , completion: @escaping (Result<LoginUrlInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetExternalLinkInfo(
            link: link
        )
        execute(query: query, completion: completion)
    }

    /// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
    /// - Parameter allowWriteAccess: True, if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
    /// - Parameter link: The HTTP link
    public func getExternalLink(
        allowWriteAccess: Bool?,
        link: String?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetExternalLink(
            allowWriteAccess: allowWriteAccess,
            link: link
        )
        execute(query: query, completion: completion)
    }

    /// Marks all mentions in a chat as read
    /// - Parameter chatId: Chat identifier
    public func readAllChatMentions(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReadAllChatMentions(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an existing chat corresponding to a given user
    /// - Parameter force: If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    /// - Parameter userId: User identifier
    public func createPrivateChat(
        force: Bool?,
        userId: Int64?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreatePrivateChat(
            force: force,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an existing chat corresponding to a known basic group
    /// - Parameter basicGroupId: Basic group identifier
    /// - Parameter force: If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    public func createBasicGroupChat(
        basicGroupId: Int64?,
        force: Bool?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateBasicGroupChat(
            basicGroupId: basicGroupId,
            force: force
        )
        execute(query: query, completion: completion)
    }

    /// Returns an existing chat corresponding to a known supergroup or channel
    /// - Parameter force: If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    /// - Parameter supergroupId: Supergroup or channel identifier
    public func createSupergroupChat(
        force: Bool?,
        supergroupId: Int64?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateSupergroupChat(
            force: force,
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an existing chat corresponding to a known secret chat
    /// - Parameter secretChatId: Secret chat identifier
    public func createSecretChat(
        secretChatId: Int?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateSecretChat(
            secretChatId: secretChatId
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
    /// - Parameter title: Title of the new basic group; 1-128 characters
    /// - Parameter userIds: Identifiers of users to be added to the basic group
    public func createNewBasicGroupChat(
        title: String?,
        userIds: [Int64]?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateNewBasicGroupChat(
            title: title,
            userIds: userIds
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
    /// - Parameter description: 
    /// - Parameter forImport: True, if the supergroup is created for importing messages using importMessage
    /// - Parameter isChannel: True, if a channel chat needs to be created
    /// - Parameter location: Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
    /// - Parameter title: Title of the new chat; 1-128 characters
    public func createNewSupergroupChat(
        description: String?,
        forImport: Bool?,
        isChannel: Bool?,
        location: ChatLocation?,
        title: String?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateNewSupergroupChat(
            description: description,
            forImport: forImport,
            isChannel: isChannel,
            location: location,
            title: title
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new secret chat. Returns the newly created chat
    /// - Parameter userId: Identifier of the target user
    public func createNewSecretChat(
        userId: Int64?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = CreateNewSecretChat(
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
    /// - Parameter chatId: Identifier of the chat to upgrade
    public func upgradeBasicGroupChatToSupergroupChat(
        chatId: Int64?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = UpgradeBasicGroupChatToSupergroupChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns chat lists to which the chat can be added. This is an offline request
    /// - Parameter chatId: Chat identifier
    public func getChatListsToAddChat(
        chatId: Int64?
        , completion: @escaping (Result<ChatLists, Swift.Error>) -> Void
    ) throws {
        let query = GetChatListsToAddChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
    /// - Parameter chatId: Chat identifier
    /// - Parameter chatList: The chat list. Use getChatListsToAddChat to get suitable chat lists
    public func addChatToList(
        chatId: Int64?,
        chatList: ChatList?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddChatToList(
            chatId: chatId,
            chatList: chatList
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a chat filter by its identifier
    /// - Parameter chatFilterId: Chat filter identifier
    public func getChatFilter(
        chatFilterId: Int?
        , completion: @escaping (Result<ChatFilter, Swift.Error>) -> Void
    ) throws {
        let query = GetChatFilter(
            chatFilterId: chatFilterId
        )
        execute(query: query, completion: completion)
    }

    /// Creates new chat filter. Returns information about the created chat filter
    /// - Parameter filter: Chat filter
    public func createChatFilter(
        filter: ChatFilter?
        , completion: @escaping (Result<ChatFilterInfo, Swift.Error>) -> Void
    ) throws {
        let query = CreateChatFilter(
            filter: filter
        )
        execute(query: query, completion: completion)
    }

    /// Edits existing chat filter. Returns information about the edited chat filter
    /// - Parameter chatFilterId: Chat filter identifier
    /// - Parameter filter: The edited chat filter
    public func editChatFilter(
        chatFilterId: Int?,
        filter: ChatFilter?
        , completion: @escaping (Result<ChatFilterInfo, Swift.Error>) -> Void
    ) throws {
        let query = EditChatFilter(
            chatFilterId: chatFilterId,
            filter: filter
        )
        execute(query: query, completion: completion)
    }

    /// Deletes existing chat filter
    /// - Parameter chatFilterId: Chat filter identifier
    public func deleteChatFilter(
        chatFilterId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteChatFilter(
            chatFilterId: chatFilterId
        )
        execute(query: query, completion: completion)
    }

    /// Changes the order of chat filters
    /// - Parameter chatFilterIds: Identifiers of chat filters in the new correct order
    public func reorderChatFilters(
        chatFilterIds: [Int]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReorderChatFilters(
            chatFilterIds: chatFilterIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns recommended chat filters for the current user
    public func getRecommendedChatFilters(, completion: @escaping (Result<RecommendedChatFilters, Swift.Error>) -> Void) throws {
        let query = GetRecommendedChatFilters()
        execute(query: query, completion: completion)
    }

    /// Returns default icon name for a filter. Can be called synchronously
    /// - Parameter filter: Chat filter
    public func getChatFilterDefaultIconName(
        filter: ChatFilter?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetChatFilterDefaultIconName(
            filter: filter
        )
        execute(query: query, completion: completion)
    }

    /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
    /// - Parameter chatId: Chat identifier
    /// - Parameter title: New title of the chat; 1-128 characters
    public func setChatTitle(
        chatId: Int64?,
        title: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatTitle(
            chatId: chatId,
            title: title
        )
        execute(query: query, completion: completion)
    }

    /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
    /// - Parameter chatId: Chat identifier
    /// - Parameter photo: New chat photo; pass null to delete the chat photo
    public func setChatPhoto(
        chatId: Int64?,
        photo: InputChatPhoto?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatPhoto(
            chatId: chatId,
            photo: photo
        )
        execute(query: query, completion: completion)
    }

    /// Changes the message TTL setting (sets a new self-destruct timer) in a chat. Requires can_delete_messages administrator right in basic groups, supergroups and channels Message TTL setting of a chat with the current user (Saved Messages) and the chat 777000 (Telegram) can't be changed
    /// - Parameter chatId: Chat identifier
    /// - Parameter ttl: New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31 * 86400 unless the chat is secret
    public func setChatMessageTtlSetting(
        chatId: Int64?,
        ttl: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatMessageTtlSetting(
            chatId: chatId,
            ttl: ttl
        )
        execute(query: query, completion: completion)
    }

    /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
    /// - Parameter chatId: Chat identifier
    /// - Parameter permissions: New non-administrator members permissions in the chat
    public func setChatPermissions(
        chatId: Int64?,
        permissions: ChatPermissions?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatPermissions(
            chatId: chatId,
            permissions: permissions
        )
        execute(query: query, completion: completion)
    }

    /// Changes the chat theme. Supported only in private and secret chats
    /// - Parameter chatId: Chat identifier
    /// - Parameter themeName: Name of the new chat theme; pass an empty string to return the default theme
    public func setChatTheme(
        chatId: Int64?,
        themeName: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatTheme(
            chatId: chatId,
            themeName: themeName
        )
        execute(query: query, completion: completion)
    }

    /// Changes the draft message in a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter draftMessage: New draft message; pass null to remove the draft
    /// - Parameter messageThreadId: If not 0, a message thread identifier in which the draft was changed
    public func setChatDraftMessage(
        chatId: Int64?,
        draftMessage: DraftMessage?,
        messageThreadId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatDraftMessage(
            chatId: chatId,
            draftMessage: draftMessage,
            messageThreadId: messageThreadId
        )
        execute(query: query, completion: completion)
    }

    /// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
    /// - Parameter chatId: Chat identifier
    /// - Parameter notificationSettings: New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
    public func setChatNotificationSettings(
        chatId: Int64?,
        notificationSettings: ChatNotificationSettings?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatNotificationSettings(
            chatId: chatId,
            notificationSettings: notificationSettings
        )
        execute(query: query, completion: completion)
    }

    /// Changes the marked as unread state of a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter isMarkedAsUnread: New value of is_marked_as_unread
    public func toggleChatIsMarkedAsUnread(
        chatId: Int64?,
        isMarkedAsUnread: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleChatIsMarkedAsUnread(
            chatId: chatId,
            isMarkedAsUnread: isMarkedAsUnread
        )
        execute(query: query, completion: completion)
    }

    /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter defaultDisableNotification: New value of default_disable_notification
    public func toggleChatDefaultDisableNotification(
        chatId: Int64?,
        defaultDisableNotification: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleChatDefaultDisableNotification(
            chatId: chatId,
            defaultDisableNotification: defaultDisableNotification
        )
        execute(query: query, completion: completion)
    }

    /// Changes application-specific data associated with a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter clientData: New value of client_data
    public func setChatClientData(
        chatId: Int64?,
        clientData: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatClientData(
            chatId: chatId,
            clientData: clientData
        )
        execute(query: query, completion: completion)
    }

    /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
    /// - Parameter chatId: Identifier of the chat
    /// - Parameter description: 
    public func setChatDescription(
        chatId: Int64?,
        description: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatDescription(
            chatId: chatId,
            description: description
        )
        execute(query: query, completion: completion)
    }

    /// Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it is specified
    /// - Parameter chatId: Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages rights in the supergroup)
    /// - Parameter discussionChatId: Identifier of a new channel's discussion group. Use 0 to remove the discussion group.//-Use the method getSuitableDiscussionChats to find all suitable groups. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that
    public func setChatDiscussionGroup(
        chatId: Int64?,
        discussionChatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatDiscussionGroup(
            chatId: chatId,
            discussionChatId: discussionChatId
        )
        execute(query: query, completion: completion)
    }

    /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
    /// - Parameter chatId: Chat identifier
    /// - Parameter location: New location for the chat; must be valid and not null
    public func setChatLocation(
        chatId: Int64?,
        location: ChatLocation?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatLocation(
            chatId: chatId,
            location: location
        )
        execute(query: query, completion: completion)
    }

    /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
    /// - Parameter chatId: Chat identifier
    /// - Parameter slowModeDelay: New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
    public func setChatSlowModeDelay(
        chatId: Int64?,
        slowModeDelay: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatSlowModeDelay(
            chatId: chatId,
            slowModeDelay: slowModeDelay
        )
        execute(query: query, completion: completion)
    }

    /// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
    /// - Parameter chatId: Identifier of the chat
    /// - Parameter disableNotification: True, if there must be no notification about the pinned message. Notifications are always disabled in channels and private chats
    /// - Parameter messageId: Identifier of the new pinned message
    /// - Parameter onlyForSelf: True, if the message needs to be pinned for one side only; private chats only
    public func pinChatMessage(
        chatId: Int64?,
        disableNotification: Bool?,
        messageId: Int64?,
        onlyForSelf: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = PinChatMessage(
            chatId: chatId,
            disableNotification: disableNotification,
            messageId: messageId,
            onlyForSelf: onlyForSelf
        )
        execute(query: query, completion: completion)
    }

    /// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
    /// - Parameter chatId: Identifier of the chat
    /// - Parameter messageId: Identifier of the removed pinned message
    public func unpinChatMessage(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = UnpinChatMessage(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
    /// - Parameter chatId: Identifier of the chat
    public func unpinAllChatMessages(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = UnpinAllChatMessages(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method
    /// - Parameter chatId: Chat identifier
    public func joinChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = JoinChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Removes the current user from chat members. Private and secret chats can't be left using this method
    /// - Parameter chatId: Chat identifier
    public func leaveChat(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = LeaveChat(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a new member to a chat. Members can't be added to private or secret chats
    /// - Parameter chatId: Chat identifier
    /// - Parameter forwardLimit: The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot
    /// - Parameter userId: Identifier of the user
    public func addChatMember(
        chatId: Int64?,
        forwardLimit: Int?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddChatMember(
            chatId: chatId,
            forwardLimit: forwardLimit,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Adds multiple new members to a chat. Currently this method is only available for supergroups and channels. This method can't be used to join a chat. Members can't be added to a channel if it has more than 200 members
    /// - Parameter chatId: Chat identifier
    /// - Parameter userIds: Identifiers of the users to be added to the chat. The maximum number of added users is 20 for supergroups and 100 for channels
    public func addChatMembers(
        chatId: Int64?,
        userIds: [Int64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddChatMembers(
            chatId: chatId,
            userIds: userIds
        )
        execute(query: query, completion: completion)
    }

    /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed
    /// - Parameter chatId: Chat identifier
    /// - Parameter memberId: Member identifier. Chats can be only banned and unbanned in supergroups and channels
    /// - Parameter status: The new status of the member in the chat
    public func setChatMemberStatus(
        chatId: Int64?,
        memberId: MessageSender?,
        status: ChatMemberStatus?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetChatMemberStatus(
            chatId: chatId,
            memberId: memberId,
            status: status
        )
        execute(query: query, completion: completion)
    }

    /// Bans a member in a chat. Members can't be banned in private or secret chats. In supergroups and channels, the user will not be able to return to the group on their own using invite links, etc., unless unbanned first
    /// - Parameter bannedUntilDate: Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Ignored in basic groups
    /// - Parameter chatId: Chat identifier
    /// - Parameter memberId: Member identifier
    /// - Parameter revokeMessages: Pass true to delete all messages in the chat for the user that is being removed. Always true for supergroups and channels
    public func banChatMember(
        bannedUntilDate: Int?,
        chatId: Int64?,
        memberId: MessageSender?,
        revokeMessages: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = BanChatMember(
            bannedUntilDate: bannedUntilDate,
            chatId: chatId,
            memberId: memberId,
            revokeMessages: revokeMessages
        )
        execute(query: query, completion: completion)
    }

    /// Checks whether the current session can be used to transfer a chat ownership to another user
    public func canTransferOwnership(, completion: @escaping (Result<CanTransferOwnershipResult, Swift.Error>) -> Void) throws {
        let query = CanTransferOwnership()
        execute(query: query, completion: completion)
    }

    /// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats
    /// - Parameter chatId: Chat identifier
    /// - Parameter password: The password of the current user
    /// - Parameter userId: Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user
    public func transferChatOwnership(
        chatId: Int64?,
        password: String?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = TransferChatOwnership(
            chatId: chatId,
            password: password,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a single member of a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter memberId: Member identifier
    public func getChatMember(
        chatId: Int64?,
        memberId: MessageSender?
        , completion: @escaping (Result<ChatMember, Swift.Error>) -> Void
    ) throws {
        let query = GetChatMember(
            chatId: chatId,
            memberId: memberId
        )
        execute(query: query, completion: completion)
    }

    /// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
    /// - Parameter chatId: Chat identifier
    /// - Parameter filter: The type of users to search for; pass null to search among all chat members
    /// - Parameter limit: The maximum number of users to be returned; up to 200
    /// - Parameter query: Query to search for
    public func searchChatMembers(
        chatId: Int64?,
        filter: ChatMembersFilter?,
        limit: Int?,
        query: String?
        , completion: @escaping (Result<ChatMembers, Swift.Error>) -> Void
    ) throws {
        let query = SearchChatMembers(
            chatId: chatId,
            filter: filter,
            limit: limit,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of administrators of the chat with their custom titles
    /// - Parameter chatId: Chat identifier
    public func getChatAdministrators(
        chatId: Int64?
        , completion: @escaping (Result<ChatAdministrators, Swift.Error>) -> Void
    ) throws {
        let query = GetChatAdministrators(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Clears draft messages in all chats
    /// - Parameter excludeSecretChats: If true, local draft messages in secret chats will not be cleared
    public func clearAllDraftMessages(
        excludeSecretChats: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ClearAllDraftMessages(
            excludeSecretChats: excludeSecretChats
        )
        execute(query: query, completion: completion)
    }

    /// Returns list of chats with non-default notification settings
    /// - Parameter compareSound: If true, also chats with non-default sound will be returned
    /// - Parameter scope: If specified, only chats from the scope will be returned; pass null to return chats from all scopes
    public func getChatNotificationSettingsExceptions(
        compareSound: Bool?,
        scope: NotificationSettingsScope?
        , completion: @escaping (Result<Chats, Swift.Error>) -> Void
    ) throws {
        let query = GetChatNotificationSettingsExceptions(
            compareSound: compareSound,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Returns the notification settings for chats of a given type
    /// - Parameter scope: Types of chats for which to return the notification settings information
    public func getScopeNotificationSettings(
        scope: NotificationSettingsScope?
        , completion: @escaping (Result<ScopeNotificationSettings, Swift.Error>) -> Void
    ) throws {
        let query = GetScopeNotificationSettings(
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Changes notification settings for chats of a given type
    /// - Parameter notificationSettings: The new notification settings for the given scope
    /// - Parameter scope: Types of chats for which to change the notification settings
    public func setScopeNotificationSettings(
        notificationSettings: ScopeNotificationSettings?,
        scope: NotificationSettingsScope?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetScopeNotificationSettings(
            notificationSettings: notificationSettings,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Resets all notification settings to their default values. By default, all chats are unmuted, the sound is set to "default" and message previews are shown
    public func resetAllNotificationSettings(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ResetAllNotificationSettings()
        execute(query: query, completion: completion)
    }

    /// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/arhive chat list
    /// - Parameter chatId: Chat identifier
    /// - Parameter chatList: Chat list in which to change the pinned state of the chat
    /// - Parameter isPinned: True, if the chat is pinned
    public func toggleChatIsPinned(
        chatId: Int64?,
        chatList: ChatList?,
        isPinned: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleChatIsPinned(
            chatId: chatId,
            chatList: chatList,
            isPinned: isPinned
        )
        execute(query: query, completion: completion)
    }

    /// Changes the order of pinned chats
    /// - Parameter chatIds: The new list of pinned chats
    /// - Parameter chatList: Chat list in which to change the order of pinned chats
    public func setPinnedChats(
        chatIds: [Int64]?,
        chatList: ChatList?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetPinnedChats(
            chatIds: chatIds,
            chatList: chatList
        )
        execute(query: query, completion: completion)
    }

    /// Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates
    /// - Parameter fileId: Identifier of the file to download
    /// - Parameter limit: Number of bytes which need to be downloaded starting from the "offset" position before the download will be automatically canceled; use 0 to download without a limit
    /// - Parameter offset: The starting position from which the file needs to be downloaded
    /// - Parameter priority: Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile was called will be downloaded first
    /// - Parameter synchronous: If false, this request returns file state just after the download has been started. If true, this request returns file state only after//-the download has succeeded, has failed, has been canceled or a new downloadFile request with different offset/limit parameters was sent
    public func downloadFile(
        fileId: Int?,
        limit: Int?,
        offset: Int?,
        priority: Int?,
        synchronous: Bool?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = DownloadFile(
            fileId: fileId,
            limit: limit,
            offset: offset,
            priority: priority,
            synchronous: synchronous
        )
        execute(query: query, completion: completion)
    }

    /// Returns file downloaded prefix size from a given offset, in bytes
    /// - Parameter fileId: Identifier of the file
    /// - Parameter offset: Offset from which downloaded prefix size needs to be calculated
    public func getFileDownloadedPrefixSize(
        fileId: Int?,
        offset: Int?
        , completion: @escaping (Result<Count, Swift.Error>) -> Void
    ) throws {
        let query = GetFileDownloadedPrefixSize(
            fileId: fileId,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Stops the downloading of a file. If a file has already been downloaded, does nothing
    /// - Parameter fileId: Identifier of a file to stop downloading
    /// - Parameter onlyIfPending: Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
    public func cancelDownloadFile(
        fileId: Int?,
        onlyIfPending: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CancelDownloadFile(
            fileId: fileId,
            onlyIfPending: onlyIfPending
        )
        execute(query: query, completion: completion)
    }

    /// Returns suggested name for saving a file in a given directory
    /// - Parameter directory: Directory in which the file is supposed to be saved
    /// - Parameter fileId: Identifier of the file
    public func getSuggestedFileName(
        directory: String?,
        fileId: Int?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetSuggestedFileName(
            directory: directory,
            fileId: fileId
        )
        execute(query: query, completion: completion)
    }

    /// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
    /// - Parameter file: File to upload
    /// - Parameter fileType: File type; pass null if unknown
    /// - Parameter priority: Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
    public func uploadFile(
        file: InputFile?,
        fileType: FileType?,
        priority: Int?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = UploadFile(
            file: file,
            fileType: fileType,
            priority: priority
        )
        execute(query: query, completion: completion)
    }

    /// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
    /// - Parameter fileId: Identifier of the file to stop uploading
    public func cancelUploadFile(
        fileId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CancelUploadFile(
            fileId: fileId
        )
        execute(query: query, completion: completion)
    }

    /// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
    /// - Parameter data: The data to write
    /// - Parameter generationId: The identifier of the generation process
    /// - Parameter offset: The offset from which to write the data to the file
    public func writeGeneratedFilePart(
        data: Data?,
        generationId: TdInt64?,
        offset: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = WriteGeneratedFilePart(
            data: data,
            generationId: generationId,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib on a file generation progress
    /// - Parameter expectedSize: Expected size of the generated file, in bytes; 0 if unknown
    /// - Parameter generationId: The identifier of the generation process
    /// - Parameter localPrefixSize: The number of bytes already generated
    public func setFileGenerationProgress(
        expectedSize: Int?,
        generationId: TdInt64?,
        localPrefixSize: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetFileGenerationProgress(
            expectedSize: expectedSize,
            generationId: generationId,
            localPrefixSize: localPrefixSize
        )
        execute(query: query, completion: completion)
    }

    /// Finishes the file generation
    /// - Parameter error: If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
    /// - Parameter generationId: The identifier of the generation process
    public func finishFileGeneration(
        error: Error?,
        generationId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = FinishFileGeneration(
            error: error,
            generationId: generationId
        )
        execute(query: query, completion: completion)
    }

    /// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
    /// - Parameter count: Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
    /// - Parameter fileId: Identifier of the file. The file must be located in the TDLib file cache
    /// - Parameter offset: The offset from which to read the file
    public func readFilePart(
        count: Int?,
        fileId: Int?,
        offset: Int?
        , completion: @escaping (Result<FilePart, Swift.Error>) -> Void
    ) throws {
        let query = ReadFilePart(
            count: count,
            fileId: fileId,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Deletes a file from the TDLib file cache
    /// - Parameter fileId: Identifier of the file to delete
    public func deleteFile(
        fileId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteFile(
            fileId: fileId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a file with messages exported from another app
    /// - Parameter messageFileHead: Beginning of the message file; up to 100 first lines
    public func getMessageFileType(
        messageFileHead: String?
        , completion: @escaping (Result<MessageFileType, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageFileType(
            messageFileHead: messageFileHead
        )
        execute(query: query, completion: completion)
    }

    /// Returns a confirmation text to be shown to the user before starting message import
    /// - Parameter chatId: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
    public func getMessageImportConfirmationText(
        chatId: Int64?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageImportConfirmationText(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Imports messages exported from another app
    /// - Parameter attachedFiles: Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
    /// - Parameter chatId: Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
    /// - Parameter messageFile: File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
    public func importMessages(
        attachedFiles: [InputFile]?,
        chatId: Int64?,
        messageFile: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ImportMessages(
            attachedFiles: attachedFiles,
            chatId: chatId,
            messageFile: messageFile
        )
        execute(query: query, completion: completion)
    }

    /// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
    /// - Parameter chatId: Chat identifier
    public func replacePrimaryChatInviteLink(
        chatId: Int64?
        , completion: @escaping (Result<ChatInviteLink, Swift.Error>) -> Void
    ) throws {
        let query = ReplacePrimaryChatInviteLink(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter createsJoinRequest: True, if the link only creates join request. If true, member_limit must not be specified
    /// - Parameter expireDate: Point in time (Unix timestamp) when the link will expire; pass 0 if never
    /// - Parameter memberLimit: The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
    /// - Parameter name: Invite link name; 0-32 characters
    public func createChatInviteLink(
        chatId: Int64?,
        createsJoinRequest: Bool?,
        expireDate: Int?,
        memberLimit: Int?,
        name: String?
        , completion: @escaping (Result<ChatInviteLink, Swift.Error>) -> Void
    ) throws {
        let query = CreateChatInviteLink(
            chatId: chatId,
            createsJoinRequest: createsJoinRequest,
            expireDate: expireDate,
            memberLimit: memberLimit,
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter createsJoinRequest: True, if the link only creates join request. If true, member_limit must not be specified
    /// - Parameter expireDate: Point in time (Unix timestamp) when the link will expire; pass 0 if never
    /// - Parameter inviteLink: Invite link to be edited
    /// - Parameter memberLimit: The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
    /// - Parameter name: Invite link name; 0-32 characters
    public func editChatInviteLink(
        chatId: Int64?,
        createsJoinRequest: Bool?,
        expireDate: Int?,
        inviteLink: String?,
        memberLimit: Int?,
        name: String?
        , completion: @escaping (Result<ChatInviteLink, Swift.Error>) -> Void
    ) throws {
        let query = EditChatInviteLink(
            chatId: chatId,
            createsJoinRequest: createsJoinRequest,
            expireDate: expireDate,
            inviteLink: inviteLink,
            memberLimit: memberLimit,
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter inviteLink: Invite link to get
    public func getChatInviteLink(
        chatId: Int64?,
        inviteLink: String?
        , completion: @escaping (Result<ChatInviteLink, Swift.Error>) -> Void
    ) throws {
        let query = GetChatInviteLink(
            chatId: chatId,
            inviteLink: inviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat
    /// - Parameter chatId: Chat identifier
    public func getChatInviteLinkCounts(
        chatId: Int64?
        , completion: @escaping (Result<ChatInviteLinkCounts, Swift.Error>) -> Void
    ) throws {
        let query = GetChatInviteLinkCounts(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns invite links for a chat created by specified administrator. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter creatorUserId: User identifier of a chat administrator. Must be an identifier of the current user for non-owner
    /// - Parameter isRevoked: Pass true if revoked links needs to be returned instead of active or expired
    /// - Parameter limit: The maximum number of invite links to return; up to 100
    /// - Parameter offsetDate: Creation date of an invite link starting after which to return invite links; use 0 to get results from the beginning
    /// - Parameter offsetInviteLink: Invite link starting after which to return invite links; use empty string to get results from the beginning
    public func getChatInviteLinks(
        chatId: Int64?,
        creatorUserId: Int64?,
        isRevoked: Bool?,
        limit: Int?,
        offsetDate: Int?,
        offsetInviteLink: String?
        , completion: @escaping (Result<ChatInviteLinks, Swift.Error>) -> Void
    ) throws {
        let query = GetChatInviteLinks(
            chatId: chatId,
            creatorUserId: creatorUserId,
            isRevoked: isRevoked,
            limit: limit,
            offsetDate: offsetDate,
            offsetInviteLink: offsetInviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Returns chat members joined a chat by an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter inviteLink: Invite link for which to return chat members
    /// - Parameter limit: The maximum number of chat members to return; up to 100
    /// - Parameter offsetMember: A chat member from which to return next chat members; pass null to get results from the beginning
    public func getChatInviteLinkMembers(
        chatId: Int64?,
        inviteLink: String?,
        limit: Int?,
        offsetMember: ChatInviteLinkMember?
        , completion: @escaping (Result<ChatInviteLinkMembers, Swift.Error>) -> Void
    ) throws {
        let query = GetChatInviteLinkMembers(
            chatId: chatId,
            inviteLink: inviteLink,
            limit: limit,
            offsetMember: offsetMember
        )
        execute(query: query, completion: completion)
    }

    /// Revokes invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links. If a primary link is revoked, then additionally to the revoked link returns new primary link
    /// - Parameter chatId: Chat identifier
    /// - Parameter inviteLink: Invite link to be revoked
    public func revokeChatInviteLink(
        chatId: Int64?,
        inviteLink: String?
        , completion: @escaping (Result<ChatInviteLinks, Swift.Error>) -> Void
    ) throws {
        let query = RevokeChatInviteLink(
            chatId: chatId,
            inviteLink: inviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter inviteLink: Invite link to revoke
    public func deleteRevokedChatInviteLink(
        chatId: Int64?,
        inviteLink: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteRevokedChatInviteLink(
            chatId: chatId,
            inviteLink: inviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    /// - Parameter chatId: Chat identifier
    /// - Parameter creatorUserId: User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner
    public func deleteAllRevokedChatInviteLinks(
        chatId: Int64?,
        creatorUserId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteAllRevokedChatInviteLinks(
            chatId: chatId,
            creatorUserId: creatorUserId
        )
        execute(query: query, completion: completion)
    }

    /// Checks the validity of an invite link for a chat and returns information about the corresponding chat
    /// - Parameter inviteLink: Invite link to be checked
    public func checkChatInviteLink(
        inviteLink: String?
        , completion: @escaping (Result<ChatInviteLinkInfo, Swift.Error>) -> Void
    ) throws {
        let query = CheckChatInviteLink(
            inviteLink: inviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Uses an invite link to add the current user to the chat if possible
    /// - Parameter inviteLink: Invite link to use
    public func joinChatByInviteLink(
        inviteLink: String?
        , completion: @escaping (Result<Chat, Swift.Error>) -> Void
    ) throws {
        let query = JoinChatByInviteLink(
            inviteLink: inviteLink
        )
        execute(query: query, completion: completion)
    }

    /// Returns pending join requests in a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter inviteLink: Invite link for which to return join requests. If empty, all join requests will be returned. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    /// - Parameter limit: The maximum number of chat join requests to return
    /// - Parameter offsetRequest: A chat join request from which to return next requests; pass null to get results from the beginning
    /// - Parameter query: A query to search for in the first names, last names and usernames of the users to return
    public func getChatJoinRequests(
        chatId: Int64?,
        inviteLink: String?,
        limit: Int?,
        offsetRequest: ChatJoinRequest?,
        query: String?
        , completion: @escaping (Result<ChatJoinRequests, Swift.Error>) -> Void
    ) throws {
        let query = GetChatJoinRequests(
            chatId: chatId,
            inviteLink: inviteLink,
            limit: limit,
            offsetRequest: offsetRequest,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Approves pending join request in a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter userId: Identifier of the user, which request will be approved
    public func approveChatJoinRequest(
        chatId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ApproveChatJoinRequest(
            chatId: chatId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Declines pending join request in a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter userId: Identifier of the user, which request will be declined
    public func declineChatJoinRequest(
        chatId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeclineChatJoinRequest(
            chatId: chatId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new call
    /// - Parameter isVideo: True, if a video call needs to be created
    /// - Parameter `protocol`: The call protocols supported by the application
    /// - Parameter userId: Identifier of the user to be called
    public func createCall(
        isVideo: Bool?,
        `protocol`: CallProtocol?,
        userId: Int64?
        , completion: @escaping (Result<CallId, Swift.Error>) -> Void
    ) throws {
        let query = CreateCall(
            isVideo: isVideo,
            protocol: `protocol`,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Accepts an incoming call
    /// - Parameter callId: Call identifier
    /// - Parameter `protocol`: The call protocols supported by the application
    public func acceptCall(
        callId: Int?,
        `protocol`: CallProtocol?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AcceptCall(
            callId: callId,
            protocol: `protocol`
        )
        execute(query: query, completion: completion)
    }

    /// Sends call signaling data
    /// - Parameter callId: Call identifier
    /// - Parameter data: The data
    public func sendCallSignalingData(
        callId: Int?,
        data: Data?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendCallSignalingData(
            callId: callId,
            data: data
        )
        execute(query: query, completion: completion)
    }

    /// Discards a call
    /// - Parameter callId: Call identifier
    /// - Parameter connectionId: Identifier of the connection used during the call
    /// - Parameter duration: The call duration, in seconds
    /// - Parameter isDisconnected: True, if the user was disconnected
    /// - Parameter isVideo: True, if the call was a video call
    public func discardCall(
        callId: Int?,
        connectionId: TdInt64?,
        duration: Int?,
        isDisconnected: Bool?,
        isVideo: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DiscardCall(
            callId: callId,
            connectionId: connectionId,
            duration: duration,
            isDisconnected: isDisconnected,
            isVideo: isVideo
        )
        execute(query: query, completion: completion)
    }

    /// Sends a call rating
    /// - Parameter callId: Call identifier
    /// - Parameter comment: An optional user comment if the rating is less than 5
    /// - Parameter problems: List of the exact types of problems with the call, specified by the user
    /// - Parameter rating: Call rating; 1-5
    public func sendCallRating(
        callId: Int?,
        comment: String?,
        problems: [CallProblem]?,
        rating: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendCallRating(
            callId: callId,
            comment: comment,
            problems: problems,
            rating: rating
        )
        execute(query: query, completion: completion)
    }

    /// Sends debug information for a call
    /// - Parameter callId: Call identifier
    /// - Parameter debugInformation: Debug information in application-specific format
    public func sendCallDebugInformation(
        callId: Int?,
        debugInformation: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendCallDebugInformation(
            callId: callId,
            debugInformation: debugInformation
        )
        execute(query: query, completion: completion)
    }

    /// Returns list of participant identifiers, which can be used to join video chats in a chat
    /// - Parameter chatId: Chat identifier
    public func getVideoChatAvailableParticipants(
        chatId: Int64?
        , completion: @escaping (Result<MessageSenders, Swift.Error>) -> Void
    ) throws {
        let query = GetVideoChatAvailableParticipants(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Changes default participant identifier, which can be used to join video chats in a chat
    /// - Parameter chatId: Chat identifier
    /// - Parameter defaultParticipantId: Default group call participant identifier to join the video chats
    public func setVideoChatDefaultParticipant(
        chatId: Int64?,
        defaultParticipantId: MessageSender?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetVideoChatDefaultParticipant(
            chatId: chatId,
            defaultParticipantId: defaultParticipantId
        )
        execute(query: query, completion: completion)
    }

    /// Creates a video chat (a group call bound to a chat). Available only for basic groups, supergroups and channels; requires can_manage_video_chats rights
    /// - Parameter chatId: Chat identifier, in which the video chat will be created
    /// - Parameter startDate: Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 to start the video chat immediately. The date must be at least 10 seconds and at most 8 days in the future
    /// - Parameter title: Group call title; if empty, chat title will be used
    public func createVideoChat(
        chatId: Int64?,
        startDate: Int?,
        title: String?
        , completion: @escaping (Result<GroupCallId, Swift.Error>) -> Void
    ) throws {
        let query = CreateVideoChat(
            chatId: chatId,
            startDate: startDate,
            title: title
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a group call
    /// - Parameter groupCallId: Group call identifier
    public func getGroupCall(
        groupCallId: Int?
        , completion: @escaping (Result<GroupCall, Swift.Error>) -> Void
    ) throws {
        let query = GetGroupCall(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Starts a scheduled group call
    /// - Parameter groupCallId: Group call identifier
    public func startScheduledGroupCall(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = StartScheduledGroupCall(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
    /// - Parameter enabledStartNotification: New value of the enabled_start_notification setting
    /// - Parameter groupCallId: Group call identifier
    public func toggleGroupCallEnabledStartNotification(
        enabledStartNotification: Bool?,
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallEnabledStartNotification(
            enabledStartNotification: enabledStartNotification,
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Joins an active group call. Returns join response payload for tgcalls
    /// - Parameter audioSourceId: Caller audio channel synchronization source identifier; received from tgcalls
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter inviteHash: If non-empty, invite hash to be used to join the group call without being muted by administrators
    /// - Parameter isMuted: True, if the user's microphone is muted
    /// - Parameter isMyVideoEnabled: True, if the user's video is enabled
    /// - Parameter participantId: Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
    /// - Parameter payload: Group call join payload; received from tgcalls
    public func joinGroupCall(
        audioSourceId: Int?,
        groupCallId: Int?,
        inviteHash: String?,
        isMuted: Bool?,
        isMyVideoEnabled: Bool?,
        participantId: MessageSender?,
        payload: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = JoinGroupCall(
            audioSourceId: audioSourceId,
            groupCallId: groupCallId,
            inviteHash: inviteHash,
            isMuted: isMuted,
            isMyVideoEnabled: isMyVideoEnabled,
            participantId: participantId,
            payload: payload
        )
        execute(query: query, completion: completion)
    }

    /// Starts screen sharing in a joined group call. Returns join response payload for tgcalls
    /// - Parameter audioSourceId: Screen sharing audio channel synchronization source identifier; received from tgcalls
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter payload: Group call join payload; received from tgcalls
    public func startGroupCallScreenSharing(
        audioSourceId: Int?,
        groupCallId: Int?,
        payload: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = StartGroupCallScreenSharing(
            audioSourceId: audioSourceId,
            groupCallId: groupCallId,
            payload: payload
        )
        execute(query: query, completion: completion)
    }

    /// Pauses or unpauses screen sharing in a joined group call
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isPaused: True if screen sharing is paused
    public func toggleGroupCallScreenSharingIsPaused(
        groupCallId: Int?,
        isPaused: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallScreenSharingIsPaused(
            groupCallId: groupCallId,
            isPaused: isPaused
        )
        execute(query: query, completion: completion)
    }

    /// Ends screen sharing in a joined group call
    /// - Parameter groupCallId: Group call identifier
    public func endGroupCallScreenSharing(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EndGroupCallScreenSharing(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Sets group call title. Requires groupCall.can_be_managed group call flag
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter title: New group call title; 1-64 characters
    public func setGroupCallTitle(
        groupCallId: Int?,
        title: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetGroupCallTitle(
            groupCallId: groupCallId,
            title: title
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires groupCall.can_toggle_mute_new_participants group call flag
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter muteNewParticipants: New value of the mute_new_participants setting
    public func toggleGroupCallMuteNewParticipants(
        groupCallId: Int?,
        muteNewParticipants: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallMuteNewParticipants(
            groupCallId: groupCallId,
            muteNewParticipants: muteNewParticipants
        )
        execute(query: query, completion: completion)
    }

    /// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
    /// - Parameter groupCallId: Group call identifier
    public func revokeGroupCallInviteLink(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RevokeGroupCallInviteLink(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for video chats
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter userIds: User identifiers. At most 10 users can be invited simultaneously
    public func inviteGroupCallParticipants(
        groupCallId: Int?,
        userIds: [Int64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = InviteGroupCallParticipants(
            groupCallId: groupCallId,
            userIds: userIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns invite link to a video chat in a public chat
    /// - Parameter canSelfUnmute: Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag
    /// - Parameter groupCallId: Group call identifier
    public func getGroupCallInviteLink(
        canSelfUnmute: Bool?,
        groupCallId: Int?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetGroupCallInviteLink(
            canSelfUnmute: canSelfUnmute,
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Starts recording of an active group call. Requires groupCall.can_be_managed group call flag
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter recordVideo: Pass true to record a video file instead of an audio file
    /// - Parameter title: Group call recording title; 0-64 characters
    /// - Parameter usePortraitOrientation: Pass true to use portrait orientation for video instead of landscape one
    public func startGroupCallRecording(
        groupCallId: Int?,
        recordVideo: Bool?,
        title: String?,
        usePortraitOrientation: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = StartGroupCallRecording(
            groupCallId: groupCallId,
            recordVideo: recordVideo,
            title: title,
            usePortraitOrientation: usePortraitOrientation
        )
        execute(query: query, completion: completion)
    }

    /// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag
    /// - Parameter groupCallId: Group call identifier
    public func endGroupCallRecording(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EndGroupCallRecording(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether current user's video is paused
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isMyVideoPaused: Pass true if the current user's video is paused
    public func toggleGroupCallIsMyVideoPaused(
        groupCallId: Int?,
        isMyVideoPaused: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallIsMyVideoPaused(
            groupCallId: groupCallId,
            isMyVideoPaused: isMyVideoPaused
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether current user's video is enabled
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isMyVideoEnabled: Pass true if the current user's video is enabled
    public func toggleGroupCallIsMyVideoEnabled(
        groupCallId: Int?,
        isMyVideoEnabled: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallIsMyVideoEnabled(
            groupCallId: groupCallId,
            isMyVideoEnabled: isMyVideoEnabled
        )
        execute(query: query, completion: completion)
    }

    /// Informs TDLib that speaking state of a participant of an active group has changed
    /// - Parameter audioSource: Group call participant's synchronization audio source identifier, or 0 for the current user
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isSpeaking: True, if the user is speaking
    public func setGroupCallParticipantIsSpeaking(
        audioSource: Int?,
        groupCallId: Int?,
        isSpeaking: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetGroupCallParticipantIsSpeaking(
            audioSource: audioSource,
            groupCallId: groupCallId,
            isSpeaking: isSpeaking
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isMuted: Pass true if the user must be muted and false otherwise
    /// - Parameter participantId: Participant identifier
    public func toggleGroupCallParticipantIsMuted(
        groupCallId: Int?,
        isMuted: Bool?,
        participantId: MessageSender?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallParticipantIsMuted(
            groupCallId: groupCallId,
            isMuted: isMuted,
            participantId: participantId
        )
        execute(query: query, completion: completion)
    }

    /// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter participantId: Participant identifier
    /// - Parameter volumeLevel: New participant's volume level; 1-20000 in hundreds of percents
    public func setGroupCallParticipantVolumeLevel(
        groupCallId: Int?,
        participantId: MessageSender?,
        volumeLevel: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetGroupCallParticipantVolumeLevel(
            groupCallId: groupCallId,
            participantId: participantId,
            volumeLevel: volumeLevel
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether a group call participant hand is rased
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter isHandRaised: Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand
    /// - Parameter participantId: Participant identifier
    public func toggleGroupCallParticipantIsHandRaised(
        groupCallId: Int?,
        isHandRaised: Bool?,
        participantId: MessageSender?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleGroupCallParticipantIsHandRaised(
            groupCallId: groupCallId,
            isHandRaised: isHandRaised,
            participantId: participantId
        )
        execute(query: query, completion: completion)
    }

    /// Loads more participants of a group call. The loaded participants will be received through updates. Use the field groupCall.loaded_all_participants to check whether all participants has already been loaded
    /// - Parameter groupCallId: Group call identifier. The group call must be previously received through getGroupCall and must be joined or being joined
    /// - Parameter limit: The maximum number of participants to load; up to 100
    public func loadGroupCallParticipants(
        groupCallId: Int?,
        limit: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = LoadGroupCallParticipants(
            groupCallId: groupCallId,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Leaves a group call
    /// - Parameter groupCallId: Group call identifier
    public func leaveGroupCall(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = LeaveGroupCall(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Discards a group call. Requires groupCall.can_be_managed
    /// - Parameter groupCallId: Group call identifier
    public func discardGroupCall(
        groupCallId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DiscardGroupCall(
            groupCallId: groupCallId
        )
        execute(query: query, completion: completion)
    }

    /// Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video
    /// - Parameter channelId: Identifier of an audio/video channel to get as received from tgcalls
    /// - Parameter groupCallId: Group call identifier
    /// - Parameter scale: Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
    /// - Parameter timeOffset: Point in time when the stream segment begins; Unix timestamp in milliseconds
    /// - Parameter videoQuality: Video quality as received from tgcalls; pass null to get the worst available quality
    public func getGroupCallStreamSegment(
        channelId: Int?,
        groupCallId: Int?,
        scale: Int?,
        timeOffset: Int64?,
        videoQuality: GroupCallVideoQuality?
        , completion: @escaping (Result<FilePart, Swift.Error>) -> Void
    ) throws {
        let query = GetGroupCallStreamSegment(
            channelId: channelId,
            groupCallId: groupCallId,
            scale: scale,
            timeOffset: timeOffset,
            videoQuality: videoQuality
        )
        execute(query: query, completion: completion)
    }

    /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
    /// - Parameter isBlocked: New value of is_blocked
    /// - Parameter sender: Message Sender
    public func toggleMessageSenderIsBlocked(
        isBlocked: Bool?,
        sender: MessageSender?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleMessageSenderIsBlocked(
            isBlocked: isBlocked,
            sender: sender
        )
        execute(query: query, completion: completion)
    }

    /// Blocks an original sender of a message in the Replies chat
    /// - Parameter deleteAllMessages: Pass true if all messages from the same sender must be deleted
    /// - Parameter deleteMessage: Pass true if the message must be deleted
    /// - Parameter messageId: The identifier of an incoming message in the Replies chat
    /// - Parameter reportSpam: Pass true if the sender must be reported to the Telegram moderators
    public func blockMessageSenderFromReplies(
        deleteAllMessages: Bool?,
        deleteMessage: Bool?,
        messageId: Int64?,
        reportSpam: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = BlockMessageSenderFromReplies(
            deleteAllMessages: deleteAllMessages,
            deleteMessage: deleteMessage,
            messageId: messageId,
            reportSpam: reportSpam
        )
        execute(query: query, completion: completion)
    }

    /// Returns users and chats that were blocked by the current user
    /// - Parameter limit: The maximum number of users and chats to return; up to 100
    /// - Parameter offset: Number of users and chats to skip in the result; must be non-negative
    public func getBlockedMessageSenders(
        limit: Int?,
        offset: Int?
        , completion: @escaping (Result<MessageSenders, Swift.Error>) -> Void
    ) throws {
        let query = GetBlockedMessageSenders(
            limit: limit,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Adds a user to the contact list or edits an existing contact by their user identifier
    /// - Parameter contact: The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
    /// - Parameter sharePhoneNumber: True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
    public func addContact(
        contact: Contact?,
        sharePhoneNumber: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddContact(
            contact: contact,
            sharePhoneNumber: sharePhoneNumber
        )
        execute(query: query, completion: completion)
    }

    /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
    /// - Parameter contacts: The list of contacts to import or edit; contacts' vCard are ignored and are not imported
    public func importContacts(
        contacts: [Contact]?
        , completion: @escaping (Result<ImportedContacts, Swift.Error>) -> Void
    ) throws {
        let query = ImportContacts(
            contacts: contacts
        )
        execute(query: query, completion: completion)
    }

    /// Returns all user contacts
    public func getContacts(, completion: @escaping (Result<Users, Swift.Error>) -> Void) throws {
        let query = GetContacts()
        execute(query: query, completion: completion)
    }

    /// Searches for the specified query in the first names, last names and usernames of the known user contacts
    /// - Parameter limit: The maximum number of users to be returned
    /// - Parameter query: Query to search for; may be empty to return all contacts
    public func searchContacts(
        limit: Int?,
        query: String?
        , completion: @escaping (Result<Users, Swift.Error>) -> Void
    ) throws {
        let query = SearchContacts(
            limit: limit,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Removes users from the contact list
    /// - Parameter userIds: Identifiers of users to be deleted
    public func removeContacts(
        userIds: [Int64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveContacts(
            userIds: userIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns the total number of imported contacts
    public func getImportedContactCount(, completion: @escaping (Result<Count, Swift.Error>) -> Void) throws {
        let query = GetImportedContactCount()
        execute(query: query, completion: completion)
    }

    /// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts. Query result depends on the result of the previous query, so only one query is possible at the same time
    /// - Parameter contacts: The new list of contacts, contact's vCard are ignored and are not imported
    public func changeImportedContacts(
        contacts: [Contact]?
        , completion: @escaping (Result<ImportedContacts, Swift.Error>) -> Void
    ) throws {
        let query = ChangeImportedContacts(
            contacts: contacts
        )
        execute(query: query, completion: completion)
    }

    /// Clears all imported contacts, contact list remains unchanged
    public func clearImportedContacts(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ClearImportedContacts()
        execute(query: query, completion: completion)
    }

    /// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber
    /// - Parameter userId: Identifier of the user with whom to share the phone number. The user must be a mutual contact
    public func sharePhoneNumber(
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SharePhoneNumber(
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
    /// - Parameter limit: The maximum number of photos to be returned; up to 100
    /// - Parameter offset: The number of photos to skip; must be non-negative
    /// - Parameter userId: User identifier
    public func getUserProfilePhotos(
        limit: Int?,
        offset: Int?,
        userId: Int64?
        , completion: @escaping (Result<ChatPhotos, Swift.Error>) -> Void
    ) throws {
        let query = GetUserProfilePhotos(
            limit: limit,
            offset: offset,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is non-empty, favorite and recently used stickers may also be returned
    /// - Parameter emoji: String representation of emoji. If empty, returns all known installed stickers
    /// - Parameter limit: The maximum number of stickers to be returned
    public func getStickers(
        emoji: String?,
        limit: Int?
        , completion: @escaping (Result<Stickers, Swift.Error>) -> Void
    ) throws {
        let query = GetStickers(
            emoji: emoji,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Searches for stickers from public sticker sets that correspond to a given emoji
    /// - Parameter emoji: String representation of emoji; must be non-empty
    /// - Parameter limit: The maximum number of stickers to be returned
    public func searchStickers(
        emoji: String?,
        limit: Int?
        , completion: @escaping (Result<Stickers, Swift.Error>) -> Void
    ) throws {
        let query = SearchStickers(
            emoji: emoji,
            limit: limit
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of installed sticker sets
    /// - Parameter isMasks: Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    public func getInstalledStickerSets(
        isMasks: Bool?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = GetInstalledStickerSets(
            isMasks: isMasks
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of archived sticker sets
    /// - Parameter isMasks: Pass true to return mask stickers sets; pass false to return ordinary sticker sets
    /// - Parameter limit: The maximum number of sticker sets to return; up to 100
    /// - Parameter offsetStickerSetId: Identifier of the sticker set from which to return the result
    public func getArchivedStickerSets(
        isMasks: Bool?,
        limit: Int?,
        offsetStickerSetId: TdInt64?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = GetArchivedStickerSets(
            isMasks: isMasks,
            limit: limit,
            offsetStickerSetId: offsetStickerSetId
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib
    /// - Parameter limit: The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
    /// - Parameter offset: The offset from which to return the sticker sets; must be non-negative
    public func getTrendingStickerSets(
        limit: Int?,
        offset: Int?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = GetTrendingStickerSets(
            limit: limit,
            offset: offset
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets
    /// - Parameter fileId: File identifier
    public func getAttachedStickerSets(
        fileId: Int?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = GetAttachedStickerSets(
            fileId: fileId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a sticker set by its identifier
    /// - Parameter setId: Identifier of the sticker set
    public func getStickerSet(
        setId: TdInt64?
        , completion: @escaping (Result<StickerSet, Swift.Error>) -> Void
    ) throws {
        let query = GetStickerSet(
            setId: setId
        )
        execute(query: query, completion: completion)
    }

    /// Searches for a sticker set by its name
    /// - Parameter name: Name of the sticker set
    public func searchStickerSet(
        name: String?
        , completion: @escaping (Result<StickerSet, Swift.Error>) -> Void
    ) throws {
        let query = SearchStickerSet(
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Searches for installed sticker sets by looking for specified query in their title and name
    /// - Parameter isMasks: Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    /// - Parameter limit: The maximum number of sticker sets to return
    /// - Parameter query: Query to search for
    public func searchInstalledStickerSets(
        isMasks: Bool?,
        limit: Int?,
        query: String?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = SearchInstalledStickerSets(
            isMasks: isMasks,
            limit: limit,
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
    /// - Parameter query: Query to search for
    public func searchStickerSets(
        query: String?
        , completion: @escaping (Result<StickerSets, Swift.Error>) -> Void
    ) throws {
        let query = SearchStickerSets(
            query: query
        )
        execute(query: query, completion: completion)
    }

    /// Installs/uninstalls or activates/archives a sticker set
    /// - Parameter isArchived: The new value of is_archived. A sticker set can't be installed and archived simultaneously
    /// - Parameter isInstalled: The new value of is_installed
    /// - Parameter setId: Identifier of the sticker set
    public func changeStickerSet(
        isArchived: Bool?,
        isInstalled: Bool?,
        setId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ChangeStickerSet(
            isArchived: isArchived,
            isInstalled: isInstalled,
            setId: setId
        )
        execute(query: query, completion: completion)
    }

    /// Informs the server that some trending sticker sets have been viewed by the user
    /// - Parameter stickerSetIds: Identifiers of viewed trending sticker sets
    public func viewTrendingStickerSets(
        stickerSetIds: [TdInt64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ViewTrendingStickerSets(
            stickerSetIds: stickerSetIds
        )
        execute(query: query, completion: completion)
    }

    /// Changes the order of installed sticker sets
    /// - Parameter isMasks: Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets
    /// - Parameter stickerSetIds: Identifiers of installed sticker sets in the new correct order
    public func reorderInstalledStickerSets(
        isMasks: Bool?,
        stickerSetIds: [TdInt64]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReorderInstalledStickerSets(
            isMasks: isMasks,
            stickerSetIds: stickerSetIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of recently used stickers
    /// - Parameter isAttached: Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
    public func getRecentStickers(
        isAttached: Bool?
        , completion: @escaping (Result<Stickers, Swift.Error>) -> Void
    ) throws {
        let query = GetRecentStickers(
            isAttached: isAttached
        )
        execute(query: query, completion: completion)
    }

    /// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
    /// - Parameter isAttached: Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers
    /// - Parameter sticker: Sticker file to add
    public func addRecentSticker(
        isAttached: Bool?,
        sticker: InputFile?
        , completion: @escaping (Result<Stickers, Swift.Error>) -> Void
    ) throws {
        let query = AddRecentSticker(
            isAttached: isAttached,
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Removes a sticker from the list of recently used stickers
    /// - Parameter isAttached: Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
    /// - Parameter sticker: Sticker file to delete
    public func removeRecentSticker(
        isAttached: Bool?,
        sticker: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveRecentSticker(
            isAttached: isAttached,
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Clears the list of recently used stickers
    /// - Parameter isAttached: Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
    public func clearRecentStickers(
        isAttached: Bool?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ClearRecentStickers(
            isAttached: isAttached
        )
        execute(query: query, completion: completion)
    }

    /// Returns favorite stickers
    public func getFavoriteStickers(, completion: @escaping (Result<Stickers, Swift.Error>) -> Void) throws {
        let query = GetFavoriteStickers()
        execute(query: query, completion: completion)
    }

    /// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
    /// - Parameter sticker: Sticker file to add
    public func addFavoriteSticker(
        sticker: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddFavoriteSticker(
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Removes a sticker from the list of favorite stickers
    /// - Parameter sticker: Sticker file to delete from the list
    public func removeFavoriteSticker(
        sticker: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveFavoriteSticker(
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
    /// - Parameter sticker: Sticker file identifier
    public func getStickerEmojis(
        sticker: InputFile?
        , completion: @escaping (Result<Emojis, Swift.Error>) -> Void
    ) throws {
        let query = GetStickerEmojis(
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Searches for emojis by keywords. Supported only if the file database is enabled
    /// - Parameter exactMatch: True, if only emojis, which exactly match text needs to be returned
    /// - Parameter inputLanguageCodes: List of possible IETF language tags of the user's input language; may be empty if unknown
    /// - Parameter text: Text to search for
    public func searchEmojis(
        exactMatch: Bool?,
        inputLanguageCodes: [String]?,
        text: String?
        , completion: @escaping (Result<Emojis, Swift.Error>) -> Void
    ) throws {
        let query = SearchEmojis(
            exactMatch: exactMatch,
            inputLanguageCodes: inputLanguageCodes,
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
    /// - Parameter emoji: The emoji
    public func getAnimatedEmoji(
        emoji: String?
        , completion: @escaping (Result<AnimatedEmoji, Swift.Error>) -> Void
    ) throws {
        let query = GetAnimatedEmoji(
            emoji: emoji
        )
        execute(query: query, completion: completion)
    }

    /// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
    /// - Parameter languageCode: Language code for which the emoji replacements will be suggested
    public func getEmojiSuggestionsUrl(
        languageCode: String?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetEmojiSuggestionsUrl(
            languageCode: languageCode
        )
        execute(query: query, completion: completion)
    }

    /// Returns saved animations
    public func getSavedAnimations(, completion: @escaping (Result<Animations, Swift.Error>) -> Void) throws {
        let query = GetSavedAnimations()
        execute(query: query, completion: completion)
    }

    /// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
    /// - Parameter animation: The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
    public func addSavedAnimation(
        animation: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddSavedAnimation(
            animation: animation
        )
        execute(query: query, completion: completion)
    }

    /// Removes an animation from the list of saved animations
    /// - Parameter animation: Animation file to be removed
    public func removeSavedAnimation(
        animation: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveSavedAnimation(
            animation: animation
        )
        execute(query: query, completion: completion)
    }

    /// Returns up to 20 recently used inline bots in the order of their last usage
    public func getRecentInlineBots(, completion: @escaping (Result<Users, Swift.Error>) -> Void) throws {
        let query = GetRecentInlineBots()
        execute(query: query, completion: completion)
    }

    /// Searches for recently used hashtags by their prefix
    /// - Parameter limit: The maximum number of hashtags to be returned
    /// - Parameter prefix: Hashtag prefix to search for
    public func searchHashtags(
        limit: Int?,
        prefix: String?
        , completion: @escaping (Result<Hashtags, Swift.Error>) -> Void
    ) throws {
        let query = SearchHashtags(
            limit: limit,
            prefix: prefix
        )
        execute(query: query, completion: completion)
    }

    /// Removes a hashtag from the list of recently used hashtags
    /// - Parameter hashtag: Hashtag to delete
    public func removeRecentHashtag(
        hashtag: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveRecentHashtag(
            hashtag: hashtag
        )
        execute(query: query, completion: completion)
    }

    /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
    /// - Parameter text: Message text with formatting
    public func getWebPagePreview(
        text: FormattedText?
        , completion: @escaping (Result<WebPage, Swift.Error>) -> Void
    ) throws {
        let query = GetWebPagePreview(
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
    /// - Parameter forceFull: If true, the full instant view for the web page will be returned
    /// - Parameter url: The web page URL
    public func getWebPageInstantView(
        forceFull: Bool?,
        url: String?
        , completion: @escaping (Result<WebPageInstantView, Swift.Error>) -> Void
    ) throws {
        let query = GetWebPageInstantView(
            forceFull: forceFull,
            url: url
        )
        execute(query: query, completion: completion)
    }

    /// Changes a profile photo for the current user
    /// - Parameter photo: Profile photo to set
    public func setProfilePhoto(
        photo: InputChatPhoto?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetProfilePhoto(
            photo: photo
        )
        execute(query: query, completion: completion)
    }

    /// Deletes a profile photo
    /// - Parameter profilePhotoId: Identifier of the profile photo to delete
    public func deleteProfilePhoto(
        profilePhotoId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteProfilePhoto(
            profilePhotoId: profilePhotoId
        )
        execute(query: query, completion: completion)
    }

    /// Changes the first and last name of the current user
    /// - Parameter firstName: The new value of the first name for the current user; 1-64 characters
    /// - Parameter lastName: The new value of the optional last name for the current user; 0-64 characters
    public func setName(
        firstName: String?,
        lastName: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetName(
            firstName: firstName,
            lastName: lastName
        )
        execute(query: query, completion: completion)
    }

    /// Changes the bio of the current user
    /// - Parameter bio: The new value of the user bio; 0-70 characters without line feeds
    public func setBio(
        bio: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetBio(
            bio: bio
        )
        execute(query: query, completion: completion)
    }

    /// Changes the username of the current user
    /// - Parameter username: The new value of the username. Use an empty string to remove the username
    public func setUsername(
        username: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetUsername(
            username: username
        )
        execute(query: query, completion: completion)
    }

    /// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
    /// - Parameter location: The new location of the user
    public func setLocation(
        location: Location?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetLocation(
            location: location
        )
        execute(query: query, completion: completion)
    }

    /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
    /// - Parameter phoneNumber: The new phone number of the user in international format
    /// - Parameter settings: Settings for the authentication of the user's phone number; pass null to use default settings
    public func changePhoneNumber(
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
        , completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void
    ) throws {
        let query = ChangePhoneNumber(
            phoneNumber: phoneNumber,
            settings: settings
        )
        execute(query: query, completion: completion)
    }

    /// Re-sends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
    public func resendChangePhoneNumberCode(, completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void) throws {
        let query = ResendChangePhoneNumberCode()
        execute(query: query, completion: completion)
    }

    /// Checks the authentication code sent to confirm a new phone number of the user
    /// - Parameter code: Verification code received by SMS, phone call or flash call
    public func checkChangePhoneNumberCode(
        code: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckChangePhoneNumberCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Sets the list of commands supported by the bot for the given user scope and language; for bots only
    /// - Parameter commands: List of the bot's commands
    /// - Parameter languageCode: A two-letter ISO 639-1 country code. If empty, the commands will be applied to all users from the given scope, for which language there are no dedicated commands
    /// - Parameter scope: The scope to which the commands are relevant; pass null to change commands in the default bot command scope
    public func setCommands(
        commands: [BotCommand]?,
        languageCode: String?,
        scope: BotCommandScope?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetCommands(
            commands: commands,
            languageCode: languageCode,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Deletes commands supported by the bot for the given user scope and language; for bots only
    /// - Parameter languageCode: A two-letter ISO 639-1 country code or an empty string
    /// - Parameter scope: The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
    public func deleteCommands(
        languageCode: String?,
        scope: BotCommandScope?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteCommands(
            languageCode: languageCode,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Returns the list of commands supported by the bot for the given user scope and language; for bots only
    /// - Parameter languageCode: A two-letter ISO 639-1 country code or an empty string
    /// - Parameter scope: The scope to which the commands are relevant; pass null to get commands in the default bot command scope
    public func getCommands(
        languageCode: String?,
        scope: BotCommandScope?
        , completion: @escaping (Result<BotCommands, Swift.Error>) -> Void
    ) throws {
        let query = GetCommands(
            languageCode: languageCode,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Returns all active sessions of the current user
    public func getActiveSessions(, completion: @escaping (Result<Sessions, Swift.Error>) -> Void) throws {
        let query = GetActiveSessions()
        execute(query: query, completion: completion)
    }

    /// Terminates a session of the current user
    /// - Parameter sessionId: Session identifier
    public func terminateSession(
        sessionId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = TerminateSession(
            sessionId: sessionId
        )
        execute(query: query, completion: completion)
    }

    /// Terminates all other sessions of the current user
    public func terminateAllOtherSessions(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = TerminateAllOtherSessions()
        execute(query: query, completion: completion)
    }

    /// Returns all website where the current user used Telegram to log in
    public func getConnectedWebsites(, completion: @escaping (Result<ConnectedWebsites, Swift.Error>) -> Void) throws {
        let query = GetConnectedWebsites()
        execute(query: query, completion: completion)
    }

    /// Disconnects website from the current user's Telegram account
    /// - Parameter websiteId: Website identifier
    public func disconnectWebsite(
        websiteId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DisconnectWebsite(
            websiteId: websiteId
        )
        execute(query: query, completion: completion)
    }

    /// Disconnects all websites from the current user's Telegram account
    public func disconnectAllWebsites(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = DisconnectAllWebsites()
        execute(query: query, completion: completion)
    }

    /// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
    /// - Parameter supergroupId: Identifier of the supergroup or channel
    /// - Parameter username: New value of the username. Use an empty string to remove the username
    public func setSupergroupUsername(
        supergroupId: Int64?,
        username: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetSupergroupUsername(
            supergroupId: supergroupId,
            username: username
        )
        execute(query: query, completion: completion)
    }

    /// Changes the sticker set of a supergroup; requires can_change_info administrator right
    /// - Parameter stickerSetId: New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
    /// - Parameter supergroupId: Identifier of the supergroup
    public func setSupergroupStickerSet(
        stickerSetId: TdInt64?,
        supergroupId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetSupergroupStickerSet(
            stickerSetId: stickerSetId,
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Toggles sender signatures messages sent in a channel; requires can_change_info administrator right
    /// - Parameter signMessages: New value of sign_messages
    /// - Parameter supergroupId: Identifier of the channel
    public func toggleSupergroupSignMessages(
        signMessages: Bool?,
        supergroupId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleSupergroupSignMessages(
            signMessages: signMessages,
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
    /// - Parameter isAllHistoryAvailable: The new value of is_all_history_available
    /// - Parameter supergroupId: The identifier of the supergroup
    public func toggleSupergroupIsAllHistoryAvailable(
        isAllHistoryAvailable: Bool?,
        supergroupId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleSupergroupIsAllHistoryAvailable(
            isAllHistoryAvailable: isAllHistoryAvailable,
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup
    /// - Parameter supergroupId: Identifier of the supergroup
    public func toggleSupergroupIsBroadcastGroup(
        supergroupId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ToggleSupergroupIsBroadcastGroup(
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
    /// - Parameter messageIds: Identifiers of messages sent in the supergroup by the user. This list must be non-empty
    /// - Parameter supergroupId: Supergroup identifier
    /// - Parameter userId: User identifier
    public func reportSupergroupSpam(
        messageIds: [Int64]?,
        supergroupId: Int64?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReportSupergroupSpam(
            messageIds: messageIds,
            supergroupId: supergroupId,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
    /// - Parameter filter: The type of users to return; pass null to use supergroupMembersFilterRecent
    /// - Parameter limit: The maximum number of users be returned; up to 200
    /// - Parameter offset: Number of users to skip
    /// - Parameter supergroupId: Identifier of the supergroup or channel
    public func getSupergroupMembers(
        filter: SupergroupMembersFilter?,
        limit: Int?,
        offset: Int?,
        supergroupId: Int64?
        , completion: @escaping (Result<ChatMembers, Swift.Error>) -> Void
    ) throws {
        let query = GetSupergroupMembers(
            filter: filter,
            limit: limit,
            offset: offset,
            supergroupId: supergroupId
        )
        execute(query: query, completion: completion)
    }

    /// Closes a secret chat, effectively transferring its state to secretChatStateClosed
    /// - Parameter secretChatId: Secret chat identifier
    public func closeSecretChat(
        secretChatId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CloseSecretChat(
            secretChatId: secretChatId
        )
        execute(query: query, completion: completion)
    }

    /// Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only for supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id)
    /// - Parameter chatId: Chat identifier
    /// - Parameter filters: The types of events to return; pass null to get chat events of all types
    /// - Parameter fromEventId: Identifier of an event from which to return results. Use 0 to get results from the latest events
    /// - Parameter limit: The maximum number of events to return; up to 100
    /// - Parameter query: Search query by which to filter events
    /// - Parameter userIds: User identifiers by which to filter events. By default, events relating to all users will be returned
    public func getChatEventLog(
        chatId: Int64?,
        filters: ChatEventLogFilters?,
        fromEventId: TdInt64?,
        limit: Int?,
        query: String?,
        userIds: [Int64]?
        , completion: @escaping (Result<ChatEvents, Swift.Error>) -> Void
    ) throws {
        let query = GetChatEventLog(
            chatId: chatId,
            filters: filters,
            fromEventId: fromEventId,
            limit: limit,
            query: query,
            userIds: userIds
        )
        execute(query: query, completion: completion)
    }

    /// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
    /// - Parameter chatId: Chat identifier of the Invoice message
    /// - Parameter messageId: Message identifier
    /// - Parameter theme: Preferred payment form theme; pass null to use the default theme
    public func getPaymentForm(
        chatId: Int64?,
        messageId: Int64?,
        theme: PaymentFormTheme?
        , completion: @escaping (Result<PaymentForm, Swift.Error>) -> Void
    ) throws {
        let query = GetPaymentForm(
            chatId: chatId,
            messageId: messageId,
            theme: theme
        )
        execute(query: query, completion: completion)
    }

    /// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
    /// - Parameter allowSave: True, if the order information can be saved
    /// - Parameter chatId: Chat identifier of the Invoice message
    /// - Parameter messageId: Message identifier
    /// - Parameter orderInfo: The order information, provided by the user; pass null if empty
    public func validateOrderInfo(
        allowSave: Bool?,
        chatId: Int64?,
        messageId: Int64?,
        orderInfo: OrderInfo?
        , completion: @escaping (Result<ValidatedOrderInfo, Swift.Error>) -> Void
    ) throws {
        let query = ValidateOrderInfo(
            allowSave: allowSave,
            chatId: chatId,
            messageId: messageId,
            orderInfo: orderInfo
        )
        execute(query: query, completion: completion)
    }

    /// Sends a filled-out payment form to the bot for final verification
    /// - Parameter chatId: Chat identifier of the Invoice message
    /// - Parameter credentials: The credentials chosen by user for payment
    /// - Parameter messageId: Message identifier
    /// - Parameter orderInfoId: Identifier returned by validateOrderInfo, or an empty string
    /// - Parameter paymentFormId: Payment form identifier returned by getPaymentForm
    /// - Parameter shippingOptionId: Identifier of a chosen shipping option, if applicable
    /// - Parameter tipAmount: Chosen by the user amount of tip in the smallest units of the currency
    public func sendPaymentForm(
        chatId: Int64?,
        credentials: InputCredentials?,
        messageId: Int64?,
        orderInfoId: String?,
        paymentFormId: TdInt64?,
        shippingOptionId: String?,
        tipAmount: Int64?
        , completion: @escaping (Result<PaymentResult, Swift.Error>) -> Void
    ) throws {
        let query = SendPaymentForm(
            chatId: chatId,
            credentials: credentials,
            messageId: messageId,
            orderInfoId: orderInfoId,
            paymentFormId: paymentFormId,
            shippingOptionId: shippingOptionId,
            tipAmount: tipAmount
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a successful payment
    /// - Parameter chatId: Chat identifier of the PaymentSuccessful message
    /// - Parameter messageId: Message identifier
    public func getPaymentReceipt(
        chatId: Int64?,
        messageId: Int64?
        , completion: @escaping (Result<PaymentReceipt, Swift.Error>) -> Void
    ) throws {
        let query = GetPaymentReceipt(
            chatId: chatId,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Returns saved order info, if any
    public func getSavedOrderInfo(, completion: @escaping (Result<OrderInfo, Swift.Error>) -> Void) throws {
        let query = GetSavedOrderInfo()
        execute(query: query, completion: completion)
    }

    /// Deletes saved order info
    public func deleteSavedOrderInfo(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = DeleteSavedOrderInfo()
        execute(query: query, completion: completion)
    }

    /// Deletes saved credentials for all payment provider bots
    public func deleteSavedCredentials(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = DeleteSavedCredentials()
        execute(query: query, completion: completion)
    }

    /// Returns a user that can be contacted to get support
    public func getSupportUser(, completion: @escaping (Result<User, Swift.Error>) -> Void) throws {
        let query = GetSupportUser()
        execute(query: query, completion: completion)
    }

    /// Returns backgrounds installed by the user
    /// - Parameter forDarkTheme: True, if the backgrounds must be ordered for dark theme
    public func getBackgrounds(
        forDarkTheme: Bool?
        , completion: @escaping (Result<Backgrounds, Swift.Error>) -> Void
    ) throws {
        let query = GetBackgrounds(
            forDarkTheme: forDarkTheme
        )
        execute(query: query, completion: completion)
    }

    /// Constructs a persistent HTTP URL for a background
    /// - Parameter name: Background name
    /// - Parameter type: Background type
    public func getBackgroundUrl(
        name: String?,
        type: BackgroundType?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetBackgroundUrl(
            name: name,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Searches for a background by its name
    /// - Parameter name: The name of the background
    public func searchBackground(
        name: String?
        , completion: @escaping (Result<Background, Swift.Error>) -> Void
    ) throws {
        let query = SearchBackground(
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Changes the background selected by the user; adds background to the list of installed backgrounds
    /// - Parameter background: The input background to use; pass null to create a new filled backgrounds or to remove the current background
    /// - Parameter forDarkTheme: True, if the background is chosen for dark theme
    /// - Parameter type: Background type; pass null to use the default type of the remote background or to remove the current background
    public func setBackground(
        background: InputBackground?,
        forDarkTheme: Bool?,
        type: BackgroundType?
        , completion: @escaping (Result<Background, Swift.Error>) -> Void
    ) throws {
        let query = SetBackground(
            background: background,
            forDarkTheme: forDarkTheme,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Removes background from the list of installed backgrounds
    /// - Parameter backgroundId: The background identifier
    public func removeBackground(
        backgroundId: TdInt64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveBackground(
            backgroundId: backgroundId
        )
        execute(query: query, completion: completion)
    }

    /// Resets list of installed backgrounds to its default value
    public func resetBackgrounds(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ResetBackgrounds()
        execute(query: query, completion: completion)
    }

    /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
    /// - Parameter onlyLocal: If true, returns only locally available information without sending network requests
    public func getLocalizationTargetInfo(
        onlyLocal: Bool?
        , completion: @escaping (Result<LocalizationTargetInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetLocalizationTargetInfo(
            onlyLocal: onlyLocal
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
    /// - Parameter languagePackId: Language pack identifier
    public func getLanguagePackInfo(
        languagePackId: String?
        , completion: @escaping (Result<LanguagePackInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetLanguagePackInfo(
            languagePackId: languagePackId
        )
        execute(query: query, completion: completion)
    }

    /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
    /// - Parameter keys: Language pack keys of the strings to be returned; leave empty to request all available strings
    /// - Parameter languagePackId: Language pack identifier of the strings to be returned
    public func getLanguagePackStrings(
        keys: [String]?,
        languagePackId: String?
        , completion: @escaping (Result<LanguagePackStrings, Swift.Error>) -> Void
    ) throws {
        let query = GetLanguagePackStrings(
            keys: keys,
            languagePackId: languagePackId
        )
        execute(query: query, completion: completion)
    }

    /// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization
    /// - Parameter languagePackId: Language pack identifier
    public func synchronizeLanguagePack(
        languagePackId: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SynchronizeLanguagePack(
            languagePackId: languagePackId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
    /// - Parameter languagePackId: Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
    public func addCustomServerLanguagePack(
        languagePackId: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddCustomServerLanguagePack(
            languagePackId: languagePackId
        )
        execute(query: query, completion: completion)
    }

    /// Adds or changes a custom local language pack to the current localization target
    /// - Parameter info: Information about the language pack. Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
    /// - Parameter strings: Strings of the new language pack
    public func setCustomLanguagePack(
        info: LanguagePackInfo?,
        strings: [LanguagePackString]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetCustomLanguagePack(
            info: info,
            strings: strings
        )
        execute(query: query, completion: completion)
    }

    /// Edits information about a custom local language pack in the current localization target. Can be called before authorization
    /// - Parameter info: New information about the custom local language pack
    public func editCustomLanguagePackInfo(
        info: LanguagePackInfo?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EditCustomLanguagePackInfo(
            info: info
        )
        execute(query: query, completion: completion)
    }

    /// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
    /// - Parameter languagePackId: Identifier of a previously added custom local language pack in the current localization target
    /// - Parameter newString: New language pack string
    public func setCustomLanguagePackString(
        languagePackId: String?,
        newString: LanguagePackString?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetCustomLanguagePackString(
            languagePackId: languagePackId,
            newString: newString
        )
        execute(query: query, completion: completion)
    }

    /// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
    /// - Parameter languagePackId: Identifier of the language pack to delete
    public func deleteLanguagePack(
        languagePackId: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteLanguagePack(
            languagePackId: languagePackId
        )
        execute(query: query, completion: completion)
    }

    /// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
    /// - Parameter deviceToken: Device token
    /// - Parameter otherUserIds: List of user identifiers of other users currently using the application
    public func registerDevice(
        deviceToken: DeviceToken?,
        otherUserIds: [Int64]?
        , completion: @escaping (Result<PushReceiverId, Swift.Error>) -> Void
    ) throws {
        let query = RegisterDevice(
            deviceToken: deviceToken,
            otherUserIds: otherUserIds
        )
        execute(query: query, completion: completion)
    }

    /// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization
    /// - Parameter payload: JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
    public func processPushNotification(
        payload: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ProcessPushNotification(
            payload: payload
        )
        execute(query: query, completion: completion)
    }

    /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
    /// - Parameter payload: JSON-encoded push notification payload
    public func getPushReceiverId(
        payload: String?
        , completion: @escaping (Result<PushReceiverId, Swift.Error>) -> Void
    ) throws {
        let query = GetPushReceiverId(
            payload: payload
        )
        execute(query: query, completion: completion)
    }

    /// Returns t.me URLs recently visited by a newly registered user
    /// - Parameter referrer: Google Play referrer to identify the user
    public func getRecentlyVisitedTMeUrls(
        referrer: String?
        , completion: @escaping (Result<TMeUrls, Swift.Error>) -> Void
    ) throws {
        let query = GetRecentlyVisitedTMeUrls(
            referrer: referrer
        )
        execute(query: query, completion: completion)
    }

    /// Changes user privacy settings
    /// - Parameter rules: The new privacy rules
    /// - Parameter setting: The privacy setting
    public func setUserPrivacySettingRules(
        rules: UserPrivacySettingRules?,
        setting: UserPrivacySetting?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetUserPrivacySettingRules(
            rules: rules,
            setting: setting
        )
        execute(query: query, completion: completion)
    }

    /// Returns the current privacy settings
    /// - Parameter setting: The privacy setting
    public func getUserPrivacySettingRules(
        setting: UserPrivacySetting?
        , completion: @escaping (Result<UserPrivacySettingRules, Swift.Error>) -> Void
    ) throws {
        let query = GetUserPrivacySettingRules(
            setting: setting
        )
        execute(query: query, completion: completion)
    }

    /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization
    /// - Parameter name: The name of the option
    public func getOption(
        name: String?
        , completion: @escaping (Result<OptionValue, Swift.Error>) -> Void
    ) throws {
        let query = GetOption(
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
    /// - Parameter name: The name of the option
    /// - Parameter value: The new value of the option; pass null to reset option value to a default value
    public func setOption(
        name: String?,
        value: OptionValue?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetOption(
            name: name,
            value: value
        )
        execute(query: query, completion: completion)
    }

    /// Changes the period of inactivity after which the account of the current user will automatically be deleted
    /// - Parameter ttl: New account TTL
    public func setAccountTtl(
        ttl: AccountTtl?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetAccountTtl(
            ttl: ttl
        )
        execute(query: query, completion: completion)
    }

    /// Returns the period of inactivity after which the account of the current user will automatically be deleted
    public func getAccountTtl(, completion: @escaping (Result<AccountTtl, Swift.Error>) -> Void) throws {
        let query = GetAccountTtl()
        execute(query: query, completion: completion)
    }

    /// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
    /// - Parameter reason: The reason why the account was deleted; optional
    public func deleteAccount(
        reason: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeleteAccount(
            reason: reason
        )
        execute(query: query, completion: completion)
    }

    /// Removes a chat action bar without any other action
    /// - Parameter chatId: Chat identifier
    public func removeChatActionBar(
        chatId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveChatActionBar(
            chatId: chatId
        )
        execute(query: query, completion: completion)
    }

    /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chat with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
    /// - Parameter chatId: Chat identifier
    /// - Parameter messageIds: Identifiers of reported messages, if any
    /// - Parameter reason: The reason for reporting the chat
    /// - Parameter text: Additional report details; 0-1024 characters
    public func reportChat(
        chatId: Int64?,
        messageIds: [Int64]?,
        reason: ChatReportReason?,
        text: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReportChat(
            chatId: chatId,
            messageIds: messageIds,
            reason: reason,
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if this is a private chat with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
    /// - Parameter chatId: Chat identifier
    /// - Parameter fileId: Identifier of the photo to report. Only full photos from chatPhoto can be reported
    /// - Parameter reason: The reason for reporting the chat photo
    /// - Parameter text: Additional report details; 0-1024 characters
    public func reportChatPhoto(
        chatId: Int64?,
        fileId: Int?,
        reason: ChatReportReason?,
        text: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = ReportChatPhoto(
            chatId: chatId,
            fileId: fileId,
            reason: reason,
            text: text
        )
        execute(query: query, completion: completion)
    }

    /// Returns detailed statistics about a chat. Currently this method can be used only for supergroups and channels. Can be used only if supergroupFullInfo.can_get_statistics == true
    /// - Parameter chatId: Chat identifier
    /// - Parameter isDark: Pass true if a dark theme is used by the application
    public func getChatStatistics(
        chatId: Int64?,
        isDark: Bool?
        , completion: @escaping (Result<ChatStatistics, Swift.Error>) -> Void
    ) throws {
        let query = GetChatStatistics(
            chatId: chatId,
            isDark: isDark
        )
        execute(query: query, completion: completion)
    }

    /// Returns detailed statistics about a message. Can be used only if message.can_get_statistics == true
    /// - Parameter chatId: Chat identifier
    /// - Parameter isDark: Pass true if a dark theme is used by the application
    /// - Parameter messageId: Message identifier
    public func getMessageStatistics(
        chatId: Int64?,
        isDark: Bool?,
        messageId: Int64?
        , completion: @escaping (Result<MessageStatistics, Swift.Error>) -> Void
    ) throws {
        let query = GetMessageStatistics(
            chatId: chatId,
            isDark: isDark,
            messageId: messageId
        )
        execute(query: query, completion: completion)
    }

    /// Loads an asynchronous or a zoomed in statistical graph
    /// - Parameter chatId: Chat identifier
    /// - Parameter token: The token for graph loading
    /// - Parameter x: X-value for zoomed in graph or 0 otherwise
    public func getStatisticalGraph(
        chatId: Int64?,
        token: String?,
        x: Int64?
        , completion: @escaping (Result<StatisticalGraph, Swift.Error>) -> Void
    ) throws {
        let query = GetStatisticalGraph(
            chatId: chatId,
            token: token,
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns storage usage statistics. Can be called before authorization
    /// - Parameter chatLimit: The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
    public func getStorageStatistics(
        chatLimit: Int?
        , completion: @escaping (Result<StorageStatistics, Swift.Error>) -> Void
    ) throws {
        let query = GetStorageStatistics(
            chatLimit: chatLimit
        )
        execute(query: query, completion: completion)
    }

    /// Quickly returns approximate storage usage statistics. Can be called before authorization
    public func getStorageStatisticsFast(, completion: @escaping (Result<StorageStatisticsFast, Swift.Error>) -> Void) throws {
        let query = GetStorageStatisticsFast()
        execute(query: query, completion: completion)
    }

    /// Returns database statistics
    public func getDatabaseStatistics(, completion: @escaping (Result<DatabaseStatistics, Swift.Error>) -> Void) throws {
        let query = GetDatabaseStatistics()
        execute(query: query, completion: completion)
    }

    /// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted
    /// - Parameter chatIds: If non-empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos)
    /// - Parameter chatLimit: Same as in getStorageStatistics. Affects only returned statistics
    /// - Parameter count: Limit on the total count of files after deletion. Pass -1 to use the default limit
    /// - Parameter excludeChatIds: If non-empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos)
    /// - Parameter fileTypes: If non-empty, only files with the given types are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted
    /// - Parameter immunityDelay: The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value
    /// - Parameter returnDeletedFileStatistics: Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics
    /// - Parameter size: Limit on the total size of files after deletion, in bytes. Pass -1 to use the default limit
    /// - Parameter ttl: Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit
    public func optimizeStorage(
        chatIds: [Int64]?,
        chatLimit: Int?,
        count: Int?,
        excludeChatIds: [Int64]?,
        fileTypes: [FileType]?,
        immunityDelay: Int?,
        returnDeletedFileStatistics: Bool?,
        size: Int64?,
        ttl: Int?
        , completion: @escaping (Result<StorageStatistics, Swift.Error>) -> Void
    ) throws {
        let query = OptimizeStorage(
            chatIds: chatIds,
            chatLimit: chatLimit,
            count: count,
            excludeChatIds: excludeChatIds,
            fileTypes: fileTypes,
            immunityDelay: immunityDelay,
            returnDeletedFileStatistics: returnDeletedFileStatistics,
            size: size,
            ttl: ttl
        )
        execute(query: query, completion: completion)
    }

    /// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it must be called whenever the network is changed, even if the network type remains the same. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics
    /// - Parameter type: The new network type; pass null to set network type to networkTypeOther
    public func setNetworkType(
        type: NetworkType?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetNetworkType(
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Returns network data usage statistics. Can be called before authorization
    /// - Parameter onlyCurrent: If true, returns only data for the current library launch
    public func getNetworkStatistics(
        onlyCurrent: Bool?
        , completion: @escaping (Result<NetworkStatistics, Swift.Error>) -> Void
    ) throws {
        let query = GetNetworkStatistics(
            onlyCurrent: onlyCurrent
        )
        execute(query: query, completion: completion)
    }

    /// Adds the specified data to data usage statistics. Can be called before authorization
    /// - Parameter entry: The network statistics entry with the data to be added to statistics
    public func addNetworkStatistics(
        entry: NetworkStatisticsEntry?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddNetworkStatistics(
            entry: entry
        )
        execute(query: query, completion: completion)
    }

    /// Resets all network data usage statistics to zero. Can be called before authorization
    public func resetNetworkStatistics(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = ResetNetworkStatistics()
        execute(query: query, completion: completion)
    }

    /// Returns auto-download settings presets for the current user
    public func getAutoDownloadSettingsPresets(, completion: @escaping (Result<AutoDownloadSettingsPresets, Swift.Error>) -> Void) throws {
        let query = GetAutoDownloadSettingsPresets()
        execute(query: query, completion: completion)
    }

    /// Sets auto-download settings
    /// - Parameter settings: New user auto-download settings
    /// - Parameter type: Type of the network for which the new settings are relevant
    public func setAutoDownloadSettings(
        settings: AutoDownloadSettings?,
        type: NetworkType?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetAutoDownloadSettings(
            settings: settings,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a bank card
    /// - Parameter bankCardNumber: The bank card number
    public func getBankCardInfo(
        bankCardNumber: String?
        , completion: @escaping (Result<BankCardInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetBankCardInfo(
            bankCardNumber: bankCardNumber
        )
        execute(query: query, completion: completion)
    }

    /// Returns one of the available Telegram Passport elements
    /// - Parameter password: Password of the current user
    /// - Parameter type: Telegram Passport element type
    public func getPassportElement(
        password: String?,
        type: PassportElementType?
        , completion: @escaping (Result<PassportElement, Swift.Error>) -> Void
    ) throws {
        let query = GetPassportElement(
            password: password,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Returns all available Telegram Passport elements
    /// - Parameter password: Password of the current user
    public func getAllPassportElements(
        password: String?
        , completion: @escaping (Result<PassportElements, Swift.Error>) -> Void
    ) throws {
        let query = GetAllPassportElements(
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
    /// - Parameter element: Input Telegram Passport element
    /// - Parameter password: Password of the current user
    public func setPassportElement(
        element: InputPassportElement?,
        password: String?
        , completion: @escaping (Result<PassportElement, Swift.Error>) -> Void
    ) throws {
        let query = SetPassportElement(
            element: element,
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Deletes a Telegram Passport element
    /// - Parameter type: Element type
    public func deletePassportElement(
        type: PassportElementType?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = DeletePassportElement(
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
    /// - Parameter errors: The errors
    /// - Parameter userId: User identifier
    public func setPassportElementErrors(
        errors: [InputPassportElementError]?,
        userId: Int64?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetPassportElementErrors(
            errors: errors,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
    /// - Parameter countryCode: A two-letter ISO 3166-1 alpha-2 country code
    public func getPreferredCountryLanguage(
        countryCode: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetPreferredCountryLanguage(
            countryCode: countryCode
        )
        execute(query: query, completion: completion)
    }

    /// Sends a code to verify a phone number to be added to a user's Telegram Passport
    /// - Parameter phoneNumber: The phone number of the user, in international format
    /// - Parameter settings: Settings for the authentication of the user's phone number; pass null to use default settings
    public func sendPhoneNumberVerificationCode(
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
        , completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void
    ) throws {
        let query = SendPhoneNumberVerificationCode(
            phoneNumber: phoneNumber,
            settings: settings
        )
        execute(query: query, completion: completion)
    }

    /// Re-sends the code to verify a phone number to be added to a user's Telegram Passport
    public func resendPhoneNumberVerificationCode(, completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void) throws {
        let query = ResendPhoneNumberVerificationCode()
        execute(query: query, completion: completion)
    }

    /// Checks the phone number verification code for Telegram Passport
    /// - Parameter code: Verification code
    public func checkPhoneNumberVerificationCode(
        code: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckPhoneNumberVerificationCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Sends a code to verify an email address to be added to a user's Telegram Passport
    /// - Parameter emailAddress: Email address
    public func sendEmailAddressVerificationCode(
        emailAddress: String?
        , completion: @escaping (Result<EmailAddressAuthenticationCodeInfo, Swift.Error>) -> Void
    ) throws {
        let query = SendEmailAddressVerificationCode(
            emailAddress: emailAddress
        )
        execute(query: query, completion: completion)
    }

    /// Re-sends the code to verify an email address to be added to a user's Telegram Passport
    public func resendEmailAddressVerificationCode(, completion: @escaping (Result<EmailAddressAuthenticationCodeInfo, Swift.Error>) -> Void) throws {
        let query = ResendEmailAddressVerificationCode()
        execute(query: query, completion: completion)
    }

    /// Checks the email address verification code for Telegram Passport
    /// - Parameter code: Verification code
    public func checkEmailAddressVerificationCode(
        code: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckEmailAddressVerificationCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Returns a Telegram Passport authorization form for sharing data with a service
    /// - Parameter botUserId: User identifier of the service's bot
    /// - Parameter nonce: Unique request identifier provided by the service
    /// - Parameter publicKey: Service's public key
    /// - Parameter scope: Telegram Passport element types requested by the service
    public func getPassportAuthorizationForm(
        botUserId: Int64?,
        nonce: String?,
        publicKey: String?,
        scope: String?
        , completion: @escaping (Result<PassportAuthorizationForm, Swift.Error>) -> Void
    ) throws {
        let query = GetPassportAuthorizationForm(
            botUserId: botUserId,
            nonce: nonce,
            publicKey: publicKey,
            scope: scope
        )
        execute(query: query, completion: completion)
    }

    /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
    /// - Parameter autorizationFormId: Authorization form identifier
    /// - Parameter password: Password of the current user
    public func getPassportAuthorizationFormAvailableElements(
        autorizationFormId: Int?,
        password: String?
        , completion: @escaping (Result<PassportElementsWithErrors, Swift.Error>) -> Void
    ) throws {
        let query = GetPassportAuthorizationFormAvailableElements(
            autorizationFormId: autorizationFormId,
            password: password
        )
        execute(query: query, completion: completion)
    }

    /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
    /// - Parameter autorizationFormId: Authorization form identifier
    /// - Parameter types: Types of Telegram Passport elements chosen by user to complete the authorization form
    public func sendPassportAuthorizationForm(
        autorizationFormId: Int?,
        types: [PassportElementType]?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SendPassportAuthorizationForm(
            autorizationFormId: autorizationFormId,
            types: types
        )
        execute(query: query, completion: completion)
    }

    /// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation
    /// - Parameter hash: Hash value from the link
    /// - Parameter phoneNumber: Phone number value from the link
    /// - Parameter settings: Settings for the authentication of the user's phone number; pass null to use default settings
    public func sendPhoneNumberConfirmationCode(
        hash: String?,
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
        , completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void
    ) throws {
        let query = SendPhoneNumberConfirmationCode(
            hash: hash,
            phoneNumber: phoneNumber,
            settings: settings
        )
        execute(query: query, completion: completion)
    }

    /// Resends phone number confirmation code
    public func resendPhoneNumberConfirmationCode(, completion: @escaping (Result<AuthenticationCodeInfo, Swift.Error>) -> Void) throws {
        let query = ResendPhoneNumberConfirmationCode()
        execute(query: query, completion: completion)
    }

    /// Checks phone number confirmation code
    /// - Parameter code: The phone number confirmation code
    public func checkPhoneNumberConfirmationCode(
        code: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = CheckPhoneNumberConfirmationCode(
            code: code
        )
        execute(query: query, completion: completion)
    }

    /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
    /// - Parameter errorMessage: The last error message
    /// - Parameter pendingUpdateCount: The number of pending updates
    public func setBotUpdatesStatus(
        errorMessage: String?,
        pendingUpdateCount: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetBotUpdatesStatus(
            errorMessage: errorMessage,
            pendingUpdateCount: pendingUpdateCount
        )
        execute(query: query, completion: completion)
    }

    /// Uploads a PNG image with a sticker; returns the uploaded file
    /// - Parameter sticker: Sticker file to upload
    /// - Parameter userId: Sticker file owner; ignored for regular users
    public func uploadStickerFile(
        sticker: InputSticker?,
        userId: Int64?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = UploadStickerFile(
            sticker: sticker,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Returns a suggested name for a new sticker set with a given title
    /// - Parameter title: Sticker set title; 1-64 characters
    public func getSuggestedStickerSetName(
        title: String?
        , completion: @escaping (Result<Text, Swift.Error>) -> Void
    ) throws {
        let query = GetSuggestedStickerSetName(
            title: title
        )
        execute(query: query, completion: completion)
    }

    /// Checks whether a name can be used for a new sticker set
    /// - Parameter name: Name to be checked
    public func checkStickerSetName(
        name: String?
        , completion: @escaping (Result<CheckStickerSetNameResult, Swift.Error>) -> Void
    ) throws {
        let query = CheckStickerSetName(
            name: name
        )
        execute(query: query, completion: completion)
    }

    /// Creates a new sticker set. Returns the newly created sticker set
    /// - Parameter isMasks: True, if stickers are masks. Animated stickers can't be masks
    /// - Parameter name: Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 1-64 characters
    /// - Parameter source: Source of the sticker set; may be empty if unknown
    /// - Parameter stickers: List of stickers to be added to the set; must be non-empty. All stickers must be of the same type. For animated stickers, uploadStickerFile must be used before the sticker is shown
    /// - Parameter title: Sticker set title; 1-64 characters
    /// - Parameter userId: Sticker set owner; ignored for regular users
    public func createNewStickerSet(
        isMasks: Bool?,
        name: String?,
        source: String?,
        stickers: [InputSticker]?,
        title: String?,
        userId: Int64?
        , completion: @escaping (Result<StickerSet, Swift.Error>) -> Void
    ) throws {
        let query = CreateNewStickerSet(
            isMasks: isMasks,
            name: name,
            source: source,
            stickers: stickers,
            title: title,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Adds a new sticker to a set; for bots only. Returns the sticker set
    /// - Parameter name: Sticker set name
    /// - Parameter sticker: Sticker to add to the set
    /// - Parameter userId: Sticker set owner
    public func addStickerToSet(
        name: String?,
        sticker: InputSticker?,
        userId: Int64?
        , completion: @escaping (Result<StickerSet, Swift.Error>) -> Void
    ) throws {
        let query = AddStickerToSet(
            name: name,
            sticker: sticker,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Sets a sticker set thumbnail; for bots only. Returns the sticker set
    /// - Parameter name: Sticker set name
    /// - Parameter thumbnail: Thumbnail to set in PNG or TGS format; pass null to remove the sticker set thumbnail. Animated thumbnail must be set for animated sticker sets and only for them
    /// - Parameter userId: Sticker set owner
    public func setStickerSetThumbnail(
        name: String?,
        thumbnail: InputFile?,
        userId: Int64?
        , completion: @escaping (Result<StickerSet, Swift.Error>) -> Void
    ) throws {
        let query = SetStickerSetThumbnail(
            name: name,
            thumbnail: thumbnail,
            userId: userId
        )
        execute(query: query, completion: completion)
    }

    /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
    /// - Parameter position: New position of the sticker in the set, zero-based
    /// - Parameter sticker: Sticker
    public func setStickerPositionInSet(
        position: Int?,
        sticker: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetStickerPositionInSet(
            position: position,
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
    /// - Parameter sticker: Sticker
    public func removeStickerFromSet(
        sticker: InputFile?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveStickerFromSet(
            sticker: sticker
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded
    /// - Parameter chatId: Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown
    /// - Parameter height: Map height in pixels before applying scale; 16-1024
    /// - Parameter location: Location of the map center
    /// - Parameter scale: Map scale; 1-3
    /// - Parameter width: Map width in pixels before applying scale; 16-1024
    /// - Parameter zoom: Map zoom level; 13-20
    public func getMapThumbnailFile(
        chatId: Int64?,
        height: Int?,
        location: Location?,
        scale: Int?,
        width: Int?,
        zoom: Int?
        , completion: @escaping (Result<File, Swift.Error>) -> Void
    ) throws {
        let query = GetMapThumbnailFile(
            chatId: chatId,
            height: height,
            location: location,
            scale: scale,
            width: width,
            zoom: zoom
        )
        execute(query: query, completion: completion)
    }

    /// Accepts Telegram terms of services
    /// - Parameter termsOfServiceId: Terms of service identifier
    public func acceptTermsOfService(
        termsOfServiceId: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AcceptTermsOfService(
            termsOfServiceId: termsOfServiceId
        )
        execute(query: query, completion: completion)
    }

    /// Sends a custom request; for bots only
    /// - Parameter method: The method name
    /// - Parameter parameters: JSON-serialized method parameters
    public func sendCustomRequest(
        method: String?,
        parameters: String?
        , completion: @escaping (Result<CustomRequestResult, Swift.Error>) -> Void
    ) throws {
        let query = SendCustomRequest(
            method: method,
            parameters: parameters
        )
        execute(query: query, completion: completion)
    }

    /// Answers a custom query; for bots only
    /// - Parameter customQueryId: Identifier of a custom query
    /// - Parameter data: JSON-serialized answer to the query
    public func answerCustomQuery(
        customQueryId: TdInt64?,
        data: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AnswerCustomQuery(
            customQueryId: customQueryId,
            data: data
        )
        execute(query: query, completion: completion)
    }

    /// Succeeds after a specified amount of time has passed. Can be called before initialization
    /// - Parameter seconds: Number of seconds before the function returns
    public func setAlarm(
        seconds: Double?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetAlarm(
            seconds: seconds
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about existing countries. Can be called before authorization
    public func getCountries(, completion: @escaping (Result<Countries, Swift.Error>) -> Void) throws {
        let query = GetCountries()
        execute(query: query, completion: completion)
    }

    /// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
    public func getCountryCode(, completion: @escaping (Result<Text, Swift.Error>) -> Void) throws {
        let query = GetCountryCode()
        execute(query: query, completion: completion)
    }

    /// Returns information about a phone number by its prefix. Can be called before authorization
    /// - Parameter phoneNumberPrefix: The phone number prefix
    public func getPhoneNumberInfo(
        phoneNumberPrefix: String?
        , completion: @escaping (Result<PhoneNumberInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetPhoneNumberInfo(
            phoneNumberPrefix: phoneNumberPrefix
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously
    /// - Parameter languageCode: A two-letter ISO 639-1 country code for country information localization
    /// - Parameter phoneNumberPrefix: The phone number prefix
    public func getPhoneNumberInfoSync(
        languageCode: String?,
        phoneNumberPrefix: String?
        , completion: @escaping (Result<PhoneNumberInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetPhoneNumberInfoSync(
            languageCode: languageCode,
            phoneNumberPrefix: phoneNumberPrefix
        )
        execute(query: query, completion: completion)
    }

    /// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram
    public func getApplicationDownloadLink(, completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void) throws {
        let query = GetApplicationDownloadLink()
        execute(query: query, completion: completion)
    }

    /// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
    /// - Parameter link: The link
    public func getDeepLinkInfo(
        link: String?
        , completion: @escaping (Result<DeepLinkInfo, Swift.Error>) -> Void
    ) throws {
        let query = GetDeepLinkInfo(
            link: link
        )
        execute(query: query, completion: completion)
    }

    /// Returns application config, provided by the server. Can be called before authorization
    public func getApplicationConfig(, completion: @escaping (Result<JsonValue, Swift.Error>) -> Void) throws {
        let query = GetApplicationConfig()
        execute(query: query, completion: completion)
    }

    /// Saves application log event on the server. Can be called before authorization
    /// - Parameter chatId: Optional chat identifier, associated with the event
    /// - Parameter data: The log event data
    /// - Parameter type: Event type
    public func saveApplicationLogEvent(
        chatId: Int64?,
        data: JsonValue?,
        type: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SaveApplicationLogEvent(
            chatId: chatId,
            data: data,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Adds a proxy server for network requests. Can be called before authorization
    /// - Parameter enable: True, if the proxy needs to be enabled
    /// - Parameter port: Proxy server port
    /// - Parameter server: Proxy server IP address
    /// - Parameter type: Proxy type
    public func addProxy(
        enable: Bool?,
        port: Int?,
        server: String?,
        type: ProxyType?
        , completion: @escaping (Result<Proxy, Swift.Error>) -> Void
    ) throws {
        let query = AddProxy(
            enable: enable,
            port: port,
            server: server,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Edits an existing proxy server for network requests. Can be called before authorization
    /// - Parameter enable: True, if the proxy needs to be enabled
    /// - Parameter port: Proxy server port
    /// - Parameter proxyId: Proxy identifier
    /// - Parameter server: Proxy server IP address
    /// - Parameter type: Proxy type
    public func editProxy(
        enable: Bool?,
        port: Int?,
        proxyId: Int?,
        server: String?,
        type: ProxyType?
        , completion: @escaping (Result<Proxy, Swift.Error>) -> Void
    ) throws {
        let query = EditProxy(
            enable: enable,
            port: port,
            proxyId: proxyId,
            server: server,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
    /// - Parameter proxyId: Proxy identifier
    public func enableProxy(
        proxyId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = EnableProxy(
            proxyId: proxyId
        )
        execute(query: query, completion: completion)
    }

    /// Disables the currently enabled proxy. Can be called before authorization
    public func disableProxy(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = DisableProxy()
        execute(query: query, completion: completion)
    }

    /// Removes a proxy server. Can be called before authorization
    /// - Parameter proxyId: Proxy identifier
    public func removeProxy(
        proxyId: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = RemoveProxy(
            proxyId: proxyId
        )
        execute(query: query, completion: completion)
    }

    /// Returns list of proxies that are currently set up. Can be called before authorization
    public func getProxies(, completion: @escaping (Result<Proxies, Swift.Error>) -> Void) throws {
        let query = GetProxies()
        execute(query: query, completion: completion)
    }

    /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
    /// - Parameter proxyId: Proxy identifier
    public func getProxyLink(
        proxyId: Int?
        , completion: @escaping (Result<HttpUrl, Swift.Error>) -> Void
    ) throws {
        let query = GetProxyLink(
            proxyId: proxyId
        )
        execute(query: query, completion: completion)
    }

    /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
    /// - Parameter proxyId: Proxy identifier. Use 0 to ping a Telegram server without a proxy
    public func pingProxy(
        proxyId: Int?
        , completion: @escaping (Result<Seconds, Swift.Error>) -> Void
    ) throws {
        let query = PingProxy(
            proxyId: proxyId
        )
        execute(query: query, completion: completion)
    }

    /// Sets new log stream for internal logging of TDLib. Can be called synchronously
    /// - Parameter logStream: New log stream
    public func setLogStream(
        logStream: LogStream?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetLogStream(
            logStream: logStream
        )
        execute(query: query, completion: completion)
    }

    /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
    public func getLogStream(, completion: @escaping (Result<LogStream, Swift.Error>) -> Void) throws {
        let query = GetLogStream()
        execute(query: query, completion: completion)
    }

    /// Sets the verbosity level of the internal logging of TDLib. Can be called synchronously
    /// - Parameter newVerbosityLevel: New value of the verbosity level for logging. Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug, value greater than 5 and up to 1023 can be used to enable even more logging
    public func setLogVerbosityLevel(
        newVerbosityLevel: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetLogVerbosityLevel(
            newVerbosityLevel: newVerbosityLevel
        )
        execute(query: query, completion: completion)
    }

    /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
    public func getLogVerbosityLevel(, completion: @escaping (Result<LogVerbosityLevel, Swift.Error>) -> Void) throws {
        let query = GetLogVerbosityLevel()
        execute(query: query, completion: completion)
    }

    /// Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications", "proxy"]. Can be called synchronously
    public func getLogTags(, completion: @escaping (Result<LogTags, Swift.Error>) -> Void) throws {
        let query = GetLogTags()
        execute(query: query, completion: completion)
    }

    /// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
    /// - Parameter newVerbosityLevel: New verbosity level; 1-1024
    /// - Parameter tag: Logging tag to change verbosity level
    public func setLogTagVerbosityLevel(
        newVerbosityLevel: Int?,
        tag: String?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = SetLogTagVerbosityLevel(
            newVerbosityLevel: newVerbosityLevel,
            tag: tag
        )
        execute(query: query, completion: completion)
    }

    /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
    /// - Parameter tag: Logging tag to change verbosity level
    public func getLogTagVerbosityLevel(
        tag: String?
        , completion: @escaping (Result<LogVerbosityLevel, Swift.Error>) -> Void
    ) throws {
        let query = GetLogTagVerbosityLevel(
            tag: tag
        )
        execute(query: query, completion: completion)
    }

    /// Adds a message to TDLib internal log. Can be called synchronously
    /// - Parameter text: Text of a message to log
    /// - Parameter verbosityLevel: The minimum verbosity level needed for the message to be logged; 0-1023
    public func addLogMessage(
        text: String?,
        verbosityLevel: Int?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = AddLogMessage(
            text: text,
            verbosityLevel: verbosityLevel
        )
        execute(query: query, completion: completion)
    }

    /// Does nothing; for testing only. This is an offline method. Can be called before authorization
    public func testCallEmpty(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = TestCallEmpty()
        execute(query: query, completion: completion)
    }

    /// Returns the received string; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: String to return
    public func testCallString(
        x: String?
        , completion: @escaping (Result<TestString, Swift.Error>) -> Void
    ) throws {
        let query = TestCallString(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Bytes to return
    public func testCallBytes(
        x: Data?
        , completion: @escaping (Result<TestBytes, Swift.Error>) -> Void
    ) throws {
        let query = TestCallBytes(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Vector of numbers to return
    public func testCallVectorInt(
        x: [Int]?
        , completion: @escaping (Result<TestVectorInt, Swift.Error>) -> Void
    ) throws {
        let query = TestCallVectorInt(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Vector of objects to return
    public func testCallVectorIntObject(
        x: [TestInt]?
        , completion: @escaping (Result<TestVectorIntObject, Swift.Error>) -> Void
    ) throws {
        let query = TestCallVectorIntObject(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Vector of strings to return
    public func testCallVectorString(
        x: [String]?
        , completion: @escaping (Result<TestVectorString, Swift.Error>) -> Void
    ) throws {
        let query = TestCallVectorString(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Vector of objects to return
    public func testCallVectorStringObject(
        x: [TestString]?
        , completion: @escaping (Result<TestVectorStringObject, Swift.Error>) -> Void
    ) throws {
        let query = TestCallVectorStringObject(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
    /// - Parameter x: Number to square
    public func testSquareInt(
        x: Int?
        , completion: @escaping (Result<TestInt, Swift.Error>) -> Void
    ) throws {
        let query = TestSquareInt(
            x: x
        )
        execute(query: query, completion: completion)
    }

    /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
    public func testNetwork(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = TestNetwork()
        execute(query: query, completion: completion)
    }

    /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
    /// - Parameter dcId: Identifier of a datacenter, with which to test connection
    /// - Parameter port: Proxy server port
    /// - Parameter server: Proxy server IP address
    /// - Parameter timeout: The maximum overall timeout for the request
    /// - Parameter type: Proxy type
    public func testProxy(
        dcId: Int?,
        port: Int?,
        server: String?,
        timeout: Double?,
        type: ProxyType?
        , completion: @escaping (Result<Ok, Swift.Error>) -> Void
    ) throws {
        let query = TestProxy(
            dcId: dcId,
            port: port,
            server: server,
            timeout: timeout,
            type: type
        )
        execute(query: query, completion: completion)
    }

    /// Forces an updates.getDifference call to the Telegram servers; for testing only
    public func testGetDifference(, completion: @escaping (Result<Ok, Swift.Error>) -> Void) throws {
        let query = TestGetDifference()
        execute(query: query, completion: completion)
    }

    /// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization
    public func testUseUpdate(, completion: @escaping (Result<Update, Swift.Error>) -> Void) throws {
        let query = TestUseUpdate()
        execute(query: query, completion: completion)
    }

    /// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
    /// - Parameter error: The error to be returned
    public func testReturnError(
        error: Error?
        , completion: @escaping (Result<Error, Swift.Error>) -> Void
    ) throws {
        let query = TestReturnError(
            error: error
        )
        execute(query: query, completion: completion)
    }


    private func execute<Q, R>(
        query: Q,
        completion: @escaping (Result<R, Swift.Error>) -> Void)
        where Q: Codable, R: Codable {

        let dto = DTO(query, encoder: self.encoder)
        client.send(query: dto) { [weak self] result in
            guard let self = self else { return }
            if let error = try? self.decoder.decode(DTO<Error>.self, from: result) {
                completion(.failure(error.payload))
            }
            let response = self.decoder.tryDecode(DTO<R>.self, from: result)
            completion(response.map { $0.payload })
        }
    }
}
