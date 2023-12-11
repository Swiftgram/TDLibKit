//
//  SendCustomRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
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

