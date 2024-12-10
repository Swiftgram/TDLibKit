//
//  SendCustomRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Sends a custom request; for bots only
public struct SendCustomRequest: Codable, Equatable, Hashable {

    /// The method name
    public let method: String?

    /// JSON-serialized method parameters
    public let parameters: String?


    public init(
        method: String?,
        parameters: String?
    ) {
        self.method = method
        self.parameters = parameters
    }
}

