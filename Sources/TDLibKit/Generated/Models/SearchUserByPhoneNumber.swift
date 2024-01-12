//
//  SearchUserByPhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Searches a user by their phone number. Returns a 404 error if the user can't be found
public struct SearchUserByPhoneNumber: Codable, Equatable, Hashable {

    /// Phone number to search for
    public let phoneNumber: String?


    public init(phoneNumber: String?) {
        self.phoneNumber = phoneNumber
    }
}

