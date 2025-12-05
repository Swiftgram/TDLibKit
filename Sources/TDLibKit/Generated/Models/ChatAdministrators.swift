//
//  ChatAdministrators.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
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

