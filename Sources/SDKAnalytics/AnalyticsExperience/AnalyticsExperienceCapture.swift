//
//  AnalyticsExperienceCapture.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 16/12/25.
//

import FullStory

final class AnalyticsExperienceCapture: AnalyticsExperienceManaging {
    func startCapture(identifier: String? = nil, userProperties: [String: AnalyticsValue]? = nil) {
        FS.restart()
        
        if let identifier = identifier, let userProperties = userProperties {
            FS.identify(identifier, userVars: userProperties)
        }
        
        if let identifier = identifier {
            FS.identify(identifier)
        }
        
        if let userProperties = userProperties {
            FS.setUserVars(userProperties)
        }
    }
    
    func stopCapture() {
        FS.shutdown()
    }
}
