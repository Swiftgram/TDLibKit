//
//  ReportAuthenticationCodeMissing.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Reports that authentication code wasn't delivered via SMS; for official mobile applications only. Works only when the current authorization state is authorizationStateWaitCode
public struct ReportAuthenticationCodeMissing: Codable, Equatable, Hashable {

    /// Current mobile network code
    public let mobileNetworkCode: String?


    public init(mobileNetworkCode: String?) {
        self.mobileNetworkCode = mobileNetworkCode
    }
}

