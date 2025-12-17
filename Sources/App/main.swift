//
//  main.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

import SDKAnalytics
import Foundation

struct TestProvider: AnalyticsStrategy {
    func setUserID(_ userId: String) async {
        
    }
    
    func setUserProperties(_ userProperties: [String : Any]) async {
        
    }
    
    func track(eventName: String, properties: [String : Any]) async {
        print("Test Test")
    }
    
    func setDefaultEventParameters(_ eventParameters: [String : Any]) async {
        
    }
}

final class Test: @unchecked Sendable {
    @AnalyticsInjected(\AnalyticsContext.track) var analyticsEvent
    @AnalyticsInjected(\AnalyticsContext.configuration) var analyticsConfiguration
    @AnalyticsInjected(\AnalyticsContext.experience) var analyticsExperience
    
    func configure() {
        analyticsConfiguration.initialize(with: AnalyticsConfiguration(strategy: TestProvider()))
    }
    
    func track() {
        let id = UUID().uuidString
        analyticsExperience.startCapture(identifier: id)
        analyticsEvent.track(eventName: "", properties: [:])
    }
}

let test = Test()

test.configure()

for _ in 0..<20 {
    test.track()
}
