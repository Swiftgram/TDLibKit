//
//  Error.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-fdcb1098
//  https://github.com/tdlib/td/tree/fdcb1098
//

import Foundation


/// An object of this type can be returned on every function call, in case of an error
public struct Error: Codable, Equatable, Swift.Error {

    /// Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
    public let code: Int

    /// Error message; subject to future changes
    public let message: String


    public init(
        code: Int,
        message: String
    ) {
        self.code = code
        self.message = message
    }
}

