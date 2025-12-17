//
//  AnalyticsContext.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//


public final class AnalyticsContext: Sendable {
    public let track: AnalyticsEventTracking
    public let session: AnalyticsSessionTracking
    public let configuration: AnalyticsConfigurationManaging
    public let experience: AnalyticsExperienceManaging
    
    init(track: AnalyticsEventTracking, session: AnalyticsSessionTracking, configuration: AnalyticsConfigurationManaging, experience: AnalyticsExperienceManaging) {
        self.track = track
        self.session = session
        self.configuration = configuration
        self.experience = experience
    }
}
