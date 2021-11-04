//
//  SetTdlibParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
public struct SetTdlibParameters: Codable {

    /// Parameters for TDLib initialization
    public let parameters: TdlibParameters?


    public init(parameters: TdlibParameters?) {
        self.parameters = parameters
    }
}

