//
//  TdClient.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Basic protocol for communicate with TdLib.
public protocol TdClient {

    /// Receives incoming updates and request responses from the TDLib client
    func run(updateHandler: @escaping (Data) -> Void)

    /// Sends request to the TDLib client.
    func send(query: TdQuery, completion: ((Data) -> Void)?) throws

    /// Synchronously executes TDLib request. Only a few requests can be executed synchronously.
    func execute(query: TdQuery) throws -> [String:Any]?

    /// Close connection with TDLib.
    func close()

}


public protocol TdQuery {

    func make(with extra: String?) throws -> Data

}
