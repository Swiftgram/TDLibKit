//
//  GetChatFolderDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
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

