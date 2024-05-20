//
//  BusinessRecipients.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes private chats chosen for automatic interaction with a business
public struct BusinessRecipients: Codable, Equatable, Hashable {

    /// Identifiers of selected private chats
    public let chatIds: [Int64]

    /// If true, then all private chats except the selected are chosen. Otherwise, only the selected chats are chosen
    public let excludeSelected: Bool

    /// Identifiers of private chats that are always excluded; for businessConnectedBot only
    public let excludedChatIds: [Int64]

    /// True, if all private chats with contacts are selected
    public let selectContacts: Bool

    /// True, if all existing private chats are selected
    public let selectExistingChats: Bool

    /// True, if all new private chats are selected
    public let selectNewChats: Bool

    /// True, if all private chats with non-contacts are selected
    public let selectNonContacts: Bool


    public init(
        chatIds: [Int64],
        excludeSelected: Bool,
        excludedChatIds: [Int64],
        selectContacts: Bool,
        selectExistingChats: Bool,
        selectNewChats: Bool,
        selectNonContacts: Bool
    ) {
        self.chatIds = chatIds
        self.excludeSelected = excludeSelected
        self.excludedChatIds = excludedChatIds
        self.selectContacts = selectContacts
        self.selectExistingChats = selectExistingChats
        self.selectNewChats = selectNewChats
        self.selectNonContacts = selectNonContacts
    }
}

