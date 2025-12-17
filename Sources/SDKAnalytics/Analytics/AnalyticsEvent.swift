//
//  AnalyticsEvent.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

final class AnalyticsEvent: AnalyticsEventTracking {
    private let observers: Array<AnalyticsEventObserver>
    
    init(observers: Array<AnalyticsEventObserver>) {
        self.observers = observers
    }
    
    init() {
        self.observers = Array()
    }
    
    func track(eventName: String, properties: [String: AnalyticsValue]) {
        Task.withAction { [weak self] analyticsProvider in
            await analyticsProvider.track(eventName: eventName, properties: properties)
            
            guard let observers = self?.observers, observers.count > .zero else { return }
            
            for observer in observers {
                await observer.track(eventName: eventName, properties: properties)
            }
        }
    }
    
    func setDefaultEventParameters(_ eventParameters: [String: AnalyticsValue]) {
        Task.withAction { [weak self] analyticsProvider in
            await analyticsProvider.setDefaultEventParameters(eventParameters)
            
            guard let observers = self?.observers, observers.count > .zero else { return }
            
            for observer in observers {
                await observer.setDefaultEventParameters(eventParameters)
            }
        }
    }
}
