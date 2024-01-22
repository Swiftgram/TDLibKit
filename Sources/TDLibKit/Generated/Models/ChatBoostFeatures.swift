//
//  ChatBoostFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-b4c07559
//  https://github.com/tdlib/td/tree/b4c07559
//

import Foundation


/// Contains a list of features available on the first chat boost levels
public struct ChatBoostFeatures: Codable, Equatable, Hashable {

    /// The list of features
    public let features: [ChatBoostLevelFeatures]


    public init(features: [ChatBoostLevelFeatures]) {
        self.features = features
    }
}

