//
//  TdlibParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains parameters for TDLib initialization
public struct TdlibParameters: Codable, Equatable {

    /// Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
    public let apiHash: String

    /// Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
    public let apiId: Int

    /// Application version; must be non-empty
    public let applicationVersion: String

    /// The path to the directory for the persistent database; if empty, the current working directory will be used
    public let databaseDirectory: String

    /// Model of the device the application is being run on; must be non-empty
    public let deviceModel: String

    /// If set to true, old files will automatically be deleted
    public let enableStorageOptimizer: Bool

    /// The path to the directory for storing files; if empty, database_directory will be used
    public let filesDirectory: String

    /// If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name
    public let ignoreFileNames: Bool

    /// IETF language tag of the user's operating system language; must be non-empty
    public let systemLanguageCode: String

    /// Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
    public let systemVersion: String

    /// If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database
    public let useChatInfoDatabase: Bool

    /// If set to true, information about downloaded and uploaded files will be saved between application restarts
    public let useFileDatabase: Bool

    /// If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database
    public let useMessageDatabase: Bool

    /// If set to true, support for secret chats will be enabled
    public let useSecretChats: Bool

    /// If set to true, the Telegram test environment will be used instead of the production environment
    public let useTestDc: Bool


    public init(
        apiHash: String,
        apiId: Int,
        applicationVersion: String,
        databaseDirectory: String,
        deviceModel: String,
        enableStorageOptimizer: Bool,
        filesDirectory: String,
        ignoreFileNames: Bool,
        systemLanguageCode: String,
        systemVersion: String,
        useChatInfoDatabase: Bool,
        useFileDatabase: Bool,
        useMessageDatabase: Bool,
        useSecretChats: Bool,
        useTestDc: Bool
    ) {
        self.apiHash = apiHash
        self.apiId = apiId
        self.applicationVersion = applicationVersion
        self.databaseDirectory = databaseDirectory
        self.deviceModel = deviceModel
        self.enableStorageOptimizer = enableStorageOptimizer
        self.filesDirectory = filesDirectory
        self.ignoreFileNames = ignoreFileNames
        self.systemLanguageCode = systemLanguageCode
        self.systemVersion = systemVersion
        self.useChatInfoDatabase = useChatInfoDatabase
        self.useFileDatabase = useFileDatabase
        self.useMessageDatabase = useMessageDatabase
        self.useSecretChats = useSecretChats
        self.useTestDc = useTestDc
    }
}

