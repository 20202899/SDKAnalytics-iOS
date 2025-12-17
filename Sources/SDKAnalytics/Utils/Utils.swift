//
//  Utils.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 16/12/25.
//

@discardableResult
func runCatching<T>(_ operation: @escaping @Sendable () throws -> T) -> Result<T, Error> {
    do {
        let value = try operation()
        return .success(value)
    } catch {
        return .failure(error)
    }
}

@discardableResult
func runCatching<T>(_ operation: @escaping @Sendable () async throws -> T) async -> Result<T, Error> {
    do {
        let value = try await operation()
        return .success(value)
    } catch {
        return .failure(error)
    }
}
