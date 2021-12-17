//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Returns full information about a basic group by its identifier
public struct GetBasicGroupFullInfo: Codable, Equatable {

    /// Basic group identifier
    public let basicGroupId: Int64?


    public init(basicGroupId: Int64?) {
        self.basicGroupId = basicGroupId
    }
}

