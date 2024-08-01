//
//  GetCurrentState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Returns all updates needed to restore current TDLib state, i.e. all actual updateAuthorizationState/updateUser/updateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
public struct GetCurrentState: Codable, Equatable, Hashable {


    public init() {}
}

