//
//  ProcessWebProxyCarrierMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Passes a message, which the page of a web proxy carrier passed to postMessage of the bridge object, to TDLib. Must be called in the order in which the messages were passed. Can be called before authorization
public struct ProcessWebProxyCarrierMessage: Codable, Equatable, Hashable {

    /// Identifier of the carrier
    public let carrierId: Int?

    /// The received message
    public let message: WebProxyCarrierMessage?


    public init(
        carrierId: Int?,
        message: WebProxyCarrierMessage?
    ) {
        self.carrierId = carrierId
        self.message = message
    }
}

