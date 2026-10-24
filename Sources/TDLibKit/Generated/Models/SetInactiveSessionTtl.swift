//
//  SetInactiveSessionTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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

