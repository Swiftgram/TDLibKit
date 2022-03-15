//
//  SearchUserByPhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Searches a user by their phone number
public struct SearchUserByPhoneNumber: Codable, Equatable {

    /// Phone number to search for
    public let phoneNumber: String?


    public init(phoneNumber: String?) {
        self.phoneNumber = phoneNumber
    }
}

