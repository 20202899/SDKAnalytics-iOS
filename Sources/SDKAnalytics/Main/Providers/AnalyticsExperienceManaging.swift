//
//  AnalyticsExperienceManaging.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 17/12/25.
//

public protocol AnalyticsExperienceManaging: Sendable {
    func startCapture(identifier: String?, userProperties: [String: AnalyticsValue]?)
    func stopCapture()
}

public extension AnalyticsExperienceManaging {
    func startCapture(identifier: String? = nil, userProperties: [String: AnalyticsValue]? = nil) {
        startCapture(identifier: identifier, userProperties: userProperties)
    }
}
