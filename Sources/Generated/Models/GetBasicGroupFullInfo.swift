//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns full information about a basic group by its identifier
public struct GetBasicGroupFullInfo: Codable {

    /// Basic group identifier
    public let basicGroupId: Int


    public init(basicGroupId: Int) {
        self.basicGroupId = basicGroupId
    }
}

