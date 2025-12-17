//
//  AnalyticsEventTracking.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//


public protocol AnalyticsEventTracking: Sendable {
    func track(eventName: String, properties: [String: AnalyticsValue])
    func setDefaultEventParameters(_ eventParameters: [String: AnalyticsValue])
}
