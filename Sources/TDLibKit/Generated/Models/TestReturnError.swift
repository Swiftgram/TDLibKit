//
//  TestReturnError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
public struct TestReturnError: Codable {

    /// The error to be returned
    public let error: Error?


    public init(error: Error?) {
        self.error = error
    }
}

