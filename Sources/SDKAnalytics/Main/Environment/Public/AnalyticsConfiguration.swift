//
//  AnalyticsConfiguration.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

public struct AnalyticsConfiguration: Sendable {
    public let strategy: AnalyticsStrategy?
    
    public init(strategy: AnalyticsStrategy) {
        self.strategy = strategy
    }
}
