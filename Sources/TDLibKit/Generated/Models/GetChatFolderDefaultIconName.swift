//
//  GetChatFolderDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Returns default icon name for a folder. Can be called synchronously
public struct GetChatFolderDefaultIconName: Codable, Equatable, Hashable {

    /// Chat folder
    public let folder: ChatFolder?


    public init(folder: ChatFolder?) {
        self.folder = folder
    }
}

