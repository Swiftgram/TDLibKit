//
//  TestReturnError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
public struct TestReturnError: Codable, Equatable, Hashable {

    /// The error to be returned
    public let error: Error?


    public init(error: Error?) {
        self.error = error
    }
}

