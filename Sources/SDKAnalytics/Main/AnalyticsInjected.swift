//
//  AnalyticsInjected.swift
//  SDKAnalytics
//
//  Created by Carlos Alberto Barbosa da Silva on 14/12/25.
//

@propertyWrapper
public struct AnalyticsInjected<Value> {
    private let keyPath: KeyPath<AnalyticsContext, Value>
    
    public init(_ keyPath: KeyPath<AnalyticsContext, Value>) {
        self.keyPath = keyPath
    }
    
    public var wrappedValue: Value {
        return GlobalContext.shared.context[keyPath: keyPath]
    }
}
