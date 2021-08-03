//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
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

