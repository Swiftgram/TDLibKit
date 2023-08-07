//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-a7f8ff6e
//  https://github.com/tdlib/td/tree/a7f8ff6e
//

import Foundation


/// Represents a list of chat administrators
public struct ChatAdministrators: Codable, Equatable, Hashable {

    /// A list of chat administrators
    public let administrators: [ChatAdministrator]


    public init(administrators: [ChatAdministrator]) {
        self.administrators = administrators
    }
}

