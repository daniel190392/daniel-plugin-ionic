import Foundation
import Capacitor
import KeychainSwift

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(DanielPlugin)
public class DanielPlugin: CAPPlugin {
    
    lazy var keychain : KeychainSwift = {
        return KeychainSwift()
    }()
    
    @objc func setKeychain(_ call: CAPPluginCall) {
        let value = call.getString("textToSave") ?? ""
        let identifier = call.getString("identifierOfKey") ?? ""
        var response = false
        
        if !identifier.isEmpty, !value.isEmpty {
            keychain.set(value, forKey: identifier)
            response = true
        }
        
        call.resolve([
            "value": response
            ])
    }
    
    @objc func setKeychainWithBoolean(_ call: CAPPluginCall) {
        let value = call.getString("textToSave") ?? ""
        let identifier = call.getString("identifierOfKey") ?? ""
        var status = call.getBool("status") ?? false
        
        //if !identifier.isEmpty, !value.isEmpty {
        //    keychain.set(value, forKey: identifier)
        //    status = true
        //}
        status = true
        
        call.resolve([
            "value": status
            ])
    }
    
    
    
    @objc func echo(_ call: CAPPluginCall) {
        call.success([
            "value":"lalala"
            ])
    }
}
