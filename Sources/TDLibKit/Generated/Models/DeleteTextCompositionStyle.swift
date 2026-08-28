//
//  DeleteTextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Deletes a custom text composition style that was created by the current user
public struct DeleteTextCompositionStyle: Codable, Equatable, Hashable {

    /// Name of the style
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

