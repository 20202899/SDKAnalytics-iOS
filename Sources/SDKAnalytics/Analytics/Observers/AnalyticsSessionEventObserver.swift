//
//  AnalyticsSessionEventObserver.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 17/12/25.
//

protocol AnalyticsSessionEventObserver: Sendable {
    func setUserID(_ userId: String) async
    func setUserProperties(_ userProperties: [String: AnalyticsValue]) async
}
