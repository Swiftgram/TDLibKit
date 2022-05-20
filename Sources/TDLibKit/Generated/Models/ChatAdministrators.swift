//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-9c9a74c5
//  https://github.com/tdlib/td/tree/9c9a74c5
//

import Foundation


/// Represents a list of chat administrators
public struct ChatAdministrators: Codable, Equatable {

    /// A list of chat administrators
    public let administrators: [ChatAdministrator]


    public init(administrators: [ChatAdministrator]) {
        self.administrators = administrators
    }
}

