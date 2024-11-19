//
//  AddContact.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Adds a user to the contact list or edits an existing contact by their user identifier
public struct AddContact: Codable, Equatable, Hashable {

    /// The contact to add or edit; phone number may be empty and needs to be specified only if known, vCard is ignored
    public let contact: Contact?

    /// Pass true to share the current user's phone number with the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
    public let sharePhoneNumber: Bool?


    public init(
        contact: Contact?,
        sharePhoneNumber: Bool?
    ) {
        self.contact = contact
        self.sharePhoneNumber = sharePhoneNumber
    }
}

