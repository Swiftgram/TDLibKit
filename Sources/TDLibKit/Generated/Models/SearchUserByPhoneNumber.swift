//
//  SearchUserByPhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Searches a user by their phone number. Returns a 404 error if the user can't be found
public struct SearchUserByPhoneNumber: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?

    /// Phone number to search for
    public let phoneNumber: String?


    public init(
        onlyLocal: Bool?,
        phoneNumber: String?
    ) {
        self.onlyLocal = onlyLocal
        self.phoneNumber = phoneNumber
    }
}

