//
//  JSONDecoder+Result.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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
