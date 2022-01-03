//
//  AddContact.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-fa8feefe
//  https://github.com/tdlib/td/tree/fa8feefe
//

import Foundation


/// Adds a user to the contact list or edits an existing contact by their user identifier
public struct AddContact: Codable, Equatable {

    /// The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
    public let contact: Contact?

    /// True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
    public let sharePhoneNumber: Bool?


    public init(
        contact: Contact?,
        sharePhoneNumber: Bool?
    ) {
        self.contact = contact
        self.sharePhoneNumber = sharePhoneNumber
    }
}

