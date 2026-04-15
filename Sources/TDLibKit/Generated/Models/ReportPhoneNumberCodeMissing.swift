//
//  ReportPhoneNumberCodeMissing.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Reports that authentication code wasn't delivered via SMS to the specified phone number; for official mobile applications only
public struct ReportPhoneNumberCodeMissing: Codable, Equatable, Hashable {

    /// Current mobile network code
    public let mobileNetworkCode: String?


    public init(mobileNetworkCode: String?) {
        self.mobileNetworkCode = mobileNetworkCode
    }
}

