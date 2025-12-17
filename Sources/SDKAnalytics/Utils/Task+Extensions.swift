//
//  Task+Extensions.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 16/12/25.
//

extension Task where Failure == Never, Success == Void {
    @discardableResult
    static func withAction(
        _ operation: @escaping @Sendable (AnalyticsStrategy) async -> Void
    ) -> Task<Void, Never> {
        Task {
            let provider: AnalyticsStrategy = await withCheckedContinuation { continuation in
                Task<Void, Never> {
                    if let strategy = AnalyticsConfigurationManager.shared.configuration?.strategy {
                        return continuation.resume(returning: strategy)
                    }
                    
                    try? await Task<Never, Never>.sleep(nanoseconds: 4_000_000_000)
                    
                    guard let strategy = AnalyticsConfigurationManager.shared.configuration?.strategy else {
                        fatalError("Analytics not configured")
                    }
                    
                    continuation.resume(returning: strategy)
                }
            }
            
            await operation(provider)
        }
    }
}
