//
//  AnalyticsSessionTracking.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//


public protocol AnalyticsSessionTracking: Sendable {
    func setUserID(_ userId: String)
    func setUserProperties(_ userProperties: [String: AnalyticsValue])
}
