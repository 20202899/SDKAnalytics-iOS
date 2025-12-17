//
//  AnalyticsStrategy.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 15/12/25.
//

public protocol AnalyticsStrategy: Sendable {
    func track(eventName: String, properties: [String: Any]) async
    func setDefaultEventParameters(_ eventParameters: [String: Any]) async
    func setUserID(_ userId: String) async
    func setUserProperties(_ userProperties: [String: Any]) async
}
