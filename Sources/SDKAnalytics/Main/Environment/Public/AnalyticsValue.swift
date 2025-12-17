//
//  AnalyticsValue.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 16/12/25.
//


public enum AnalyticsValue: Sendable {
    case string(String)
    case int(Int)
    case double(Double)
    case bool(Bool)
    case dictionary([String: AnalyticsValue])
}
