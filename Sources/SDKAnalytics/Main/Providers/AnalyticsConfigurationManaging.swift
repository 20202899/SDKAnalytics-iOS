//
//  AnalyticsConfigurationManaging.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

public protocol AnalyticsConfigurationManaging: Sendable {
    var configuration: AnalyticsConfiguration? { get }
    func initialize(with configuration: AnalyticsConfiguration)
}
