//
//  AnalyticsConfigurationManager.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

final class AnalyticsConfigurationManager: AnalyticsConfigurationManaging, @unchecked Sendable {
    static let shared: AnalyticsConfigurationManaging = AnalyticsConfigurationManager()
    var configuration: AnalyticsConfiguration? = nil
    
    private init() {}
    
    func initialize(with configuration: AnalyticsConfiguration) {
        if self.configuration == nil {
            self.configuration = configuration
        }
    }
}
