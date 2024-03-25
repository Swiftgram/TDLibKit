//
//  BusinessRecipients.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-586bc784
//  https://github.com/tdlib/td/tree/586bc784
//

import Foundation


/// Describes private chats chosen for automatic interaction with a business
public struct BusinessRecipients: Codable, Equatable, Hashable {

    /// Identifiers of selected private chats
    public let chatIds: [Int64]

    /// If true, then all private chats except the selected are chosen. Otherwise, only the selected chats are chosen
    public let excludeSelected: Bool

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
        selectContacts: Bool,
        selectExistingChats: Bool,
        selectNewChats: Bool,
        selectNonContacts: Bool
    ) {
        self.chatIds = chatIds
        self.excludeSelected = excludeSelected
        self.selectContacts = selectContacts
        self.selectExistingChats = selectExistingChats
        self.selectNewChats = selectNewChats
        self.selectNonContacts = selectNonContacts
    }
}

