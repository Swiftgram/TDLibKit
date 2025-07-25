//
//  SetBusinessAccountName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes the first and last name of a business account; for bots only
public struct SetBusinessAccountName: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
    public let businessConnectionId: String?

    /// The new value of the first name for the business account; 1-64 characters
    public let firstName: String?

    /// The new value of the optional last name for the business account; 0-64 characters
    public let lastName: String?


    public init(
        businessConnectionId: String?,
        firstName: String?,
        lastName: String?
    ) {
        self.businessConnectionId = businessConnectionId
        self.firstName = firstName
        self.lastName = lastName
    }
}

