//
//  AnalyticsEventObserver.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 17/12/25.
//

protocol AnalyticsEventObserver: Sendable {
    func track(eventName: String, properties: [String: AnalyticsValue]) async
    func setDefaultEventParameters(_ eventParameters: [String: AnalyticsValue]) async
}
