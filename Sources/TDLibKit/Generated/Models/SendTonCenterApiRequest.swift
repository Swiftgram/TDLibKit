//
//  SendTonCenterApiRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Sends a request to TON Center API and returns its response in JSON format
public struct SendTonCenterApiRequest: Codable, Equatable, Hashable {

    /// The path of the requested endpoint. See https://toncenter.com/api/v3/index.html for the list of supported endpoints
    public let endpoint: String?

    /// Type of the request
    public let type: TonCenterApiRequestType?


    public init(
        endpoint: String?,
        type: TonCenterApiRequestType?
    ) {
        self.endpoint = endpoint
        self.type = type
    }
}

