//
//  TestReturnError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
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

