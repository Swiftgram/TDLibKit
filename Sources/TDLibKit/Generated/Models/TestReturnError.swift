//
//  TestReturnError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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

