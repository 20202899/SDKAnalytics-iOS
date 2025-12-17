//
//  AnalyticsSessionEvent.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//


final class AnalyticsSessionEvent: AnalyticsSessionTracking {
    private let observers: Array<AnalyticsSessionEventObserver>
    
    init(observers: Array<AnalyticsSessionEventObserver>) {
        self.observers = observers
    }
    
    init() {
        self.observers = Array()
    }
    
    func setUserID(_ userId: String) {
        Task.withAction { [weak self] analyticsProvider in
            await analyticsProvider.setUserID(userId)
            
            guard let observers = self?.observers, observers.count > .zero else { return }
            
            for observer in observers {
                await observer.setUserID(userId)
            }
        }
    }
    
    func setUserProperties(_ userProperties: [String: AnalyticsValue]) {
        Task.withAction { [weak self] analyticsProvider in
            await analyticsProvider.setUserProperties(userProperties)
            
            guard let observers = self?.observers, observers.count > .zero else { return }
            
            for observer in observers {
                await observer.setUserProperties(userProperties)
            }
        }
    }
}
