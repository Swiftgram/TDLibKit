//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns full information about a basic group by its identifier
public struct GetBasicGroupFullInfo: Codable {

    /// Basic group identifier
    public let basicGroupId: Int64?


    public init(basicGroupId: Int64?) {
        self.basicGroupId = basicGroupId
    }
}

