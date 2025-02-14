//
//  SetInactiveSessionTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Changes the period of inactivity after which sessions will automatically be terminated
public struct SetInactiveSessionTtl: Codable, Equatable, Hashable {

    /// New number of days of inactivity before sessions will be automatically terminated; 1-366 days
    public let inactiveSessionTtlDays: Int?


    public init(inactiveSessionTtlDays: Int?) {
        self.inactiveSessionTtlDays = inactiveSessionTtlDays
    }
}

