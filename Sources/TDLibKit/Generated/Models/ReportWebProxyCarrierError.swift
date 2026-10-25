//
//  ReportWebProxyCarrierError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Reports that a web proxy carrier failed. TDLib closes the carrier and decides whether and when to request a new one. Can be called before authorization
public struct ReportWebProxyCarrierError: Codable, Equatable, Hashable {

    /// Identifier of the carrier
    public let carrierId: Int?

    /// The error
    public let error: WebProxyCarrierError?


    public init(
        carrierId: Int?,
        error: WebProxyCarrierError?
    ) {
        self.carrierId = carrierId
        self.error = error
    }
}

