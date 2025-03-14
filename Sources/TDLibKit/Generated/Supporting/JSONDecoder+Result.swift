//
//  JSONDecoder+Result.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


extension JSONDecoder {

    func tryDecode<T>(_ type: T.Type, from data: Data) -> Result<T, Swift.Error> where T : Decodable {
        do {
            let result = try self.decode(type, from: data)
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
}
