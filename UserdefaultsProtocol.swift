//
//  UserdefaultsProtocol.swift
//  UserdefaultProtocol
//
//  Created by 王源鸿 on 2017/5/22.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import Foundation

// MARK: - 命名空间,防止key冲突

protocol KeyNamespaceable {
    
}

extension KeyNamespaceable {
    static func namespace<T>(_ key: T) -> String where T: RawRepresentable {
        return "\(Self.self).\(key.rawValue)"
    }
}

// MARK: - UD 存取 Bool 方法

protocol BoolUserDefaultable: KeyNamespaceable {
    associatedtype BoolKey: RawRepresentable
}

extension BoolUserDefaultable where BoolKey.RawValue == String {
    static func set(_ value: Bool, _ key: BoolKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key);
    }

    static func bool(_ key: BoolKey) -> Bool {
        let key = namespace(key)
        return UserDefaults.standard.bool(forKey: key)
    }

    static func remove(_ key: BoolKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 String 方法

protocol StringUserDefaultable: KeyNamespaceable {
    associatedtype StringKey: RawRepresentable
}

extension StringUserDefaultable where StringKey.RawValue == String {
    static func set(_ value: String, _ key: StringKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func string(_ key: StringKey) -> String? {
        let key = namespace(key)
        return UserDefaults.standard.string(forKey: key)
    }

    static func remove(_ key: StringKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 Float 方法

protocol FloatUserDefaultable: KeyNamespaceable {
    associatedtype FloatKey: RawRepresentable
}

extension FloatUserDefaultable where FloatKey.RawValue == String {
    static func set(_ value: Float, _ key: FloatKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func float(_ key: FloatKey) -> Float {
        let key = namespace(key)
        return UserDefaults.standard.float(forKey: key)
    }

    static func remove(_ key: FloatKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 Double 方法

protocol DoubleUserDefaultalbe: KeyNamespaceable {
    associatedtype DoubleKey: RawRepresentable
}

extension DoubleUserDefaultalbe where DoubleKey.RawValue == String {
    static func set(_ value: Double, _ key: DoubleKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func dobule(_ key: DoubleKey) -> Double {
        let key = namespace(key)
        return UserDefaults.standard.double(forKey: key)

    }

    static func remove(_ key: DoubleKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 Int 方法

protocol IntUserDefaultable: KeyNamespaceable {
    associatedtype IntKey: RawRepresentable
}

extension IntUserDefaultable where IntKey.RawValue == String {
    static func set(_ value: Int, _ key: IntKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func int(_ key: IntKey) -> Int {
        let key = namespace(key)
        return  UserDefaults.standard.integer(forKey: key)
    }

    static func remove(_ key: IntKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 URL 方法

protocol UrlUserDefaultable: KeyNamespaceable {
    associatedtype UrlKey: RawRepresentable
}

extension UrlUserDefaultable where UrlKey.RawValue == String {
    static func set(_ value: NSURL, _ key: UrlKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func url(_ key: UrlKey) -> URL? {
        let key = namespace(key)
        return UserDefaults.standard.url(forKey: key)
    }

    static func remove(_ key: UrlKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - UD 存取 Any 方法

protocol AnyUserDefaultable: KeyNamespaceable {
    associatedtype AnyKey: RawRepresentable
}

extension AnyUserDefaultable where AnyKey.RawValue == String {
    static func set(_ value: Any, _ key: AnyKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    static func any(_ key: AnyKey) -> Any? {
        let key = namespace(key)
        return UserDefaults.standard.object(forKey: key)
    }

    static func remove(_ key: AnyKey) {
        let key = namespace(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - 拓展 系统的 UserDefautls

extension UserDefaults {
    struct Account: StringUserDefaultable {
        enum StringKey: String {
            case userName
        }
    }
}
