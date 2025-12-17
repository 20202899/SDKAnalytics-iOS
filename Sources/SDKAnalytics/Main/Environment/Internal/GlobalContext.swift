//
//  GlobalContext.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//


final class GlobalContext: Sendable {
    static let shared = GlobalContext()
    
    private init() {}
    
    let context: AnalyticsContext = AnalyticsContext(track: AnalyticsEvent(observers: [
        AnalyticsExperienceEventObserver()
    ]), session: AnalyticsSessionEvent(), configuration: AnalyticsConfigurationManager.shared, experience: AnalyticsExperienceCapture())
}
