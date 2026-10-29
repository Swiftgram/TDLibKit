//
//  GetUserLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Returns an HTTPS link, which can be used to get information about the current user
public struct GetUserLink: Codable, Equatable, Hashable {

    /// Pass true to get a link, which allows other users to send unpaid messages to the current user. By default, a temporary link is returned in this case
    public let removeMessagesFee: Bool?

    /// Pass true to get a permanent link; ignored if remove_messages_fee is false. Can be used only if can_get_permanent_link is true in a previously received userLink
    public let returnPermanentLink: Bool?

    /// Pass true to revoke previously created links, which allow other users to send unpaid messages to the current user; ignored if remove_messages_fee is false. If return_permanent_link is true, then the permanent link is revoked too; otherwise, only temporary links are revoked
    public let revokePreviousLinks: Bool?


    public init(
        removeMessagesFee: Bool?,
        returnPermanentLink: Bool?,
        revokePreviousLinks: Bool?
    ) {
        self.removeMessagesFee = removeMessagesFee
        self.returnPermanentLink = returnPermanentLink
        self.revokePreviousLinks = revokePreviousLinks
    }
}

