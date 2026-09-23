//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-738ae316
//  https://github.com/tdlib/td/tree/738ae316
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

