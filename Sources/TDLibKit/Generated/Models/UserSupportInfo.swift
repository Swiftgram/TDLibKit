//
//  UserSupportInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Contains custom information about the user
public struct UserSupportInfo: Codable, Equatable, Hashable {

    /// Information author
    public let author: String

    /// Information change date
    public let date: Int

    /// Information message
    public let message: FormattedText


    public init(
        author: String,
        date: Int,
        message: FormattedText
    ) {
        self.author = author
        self.date = date
        self.message = message
    }
}

