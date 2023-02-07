//
//  SearchUserByPhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-5ed1d22d
//  https://github.com/tdlib/td/tree/5ed1d22d
//

import Foundation


/// Searches a user by their phone number. Returns a 404 error if the user can't be found
public struct SearchUserByPhoneNumber: Codable, Equatable {

    /// Phone number to search for
    public let phoneNumber: String?


    public init(phoneNumber: String?) {
        self.phoneNumber = phoneNumber
    }
}

