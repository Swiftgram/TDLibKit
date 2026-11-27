//
//  Destroy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization
public struct Destroy: Codable, Equatable, Hashable {


    public init() {}
}

