//
//  AnalyticsExperienceEventObserver.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 17/12/25.
//

import FullStory

struct AnalyticsExperienceEventObserver: AnalyticsEventObserver {
    func track(eventName: String, properties: [String : AnalyticsValue]) async {
        FS.event(eventName, properties: properties)
    }
    
    func setDefaultEventParameters(_ eventParameters: [String : AnalyticsValue]) async {
        // TODO: Entender se faz sentido
    }
}
