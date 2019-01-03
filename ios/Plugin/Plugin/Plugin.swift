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
        
        let a : PluginResultData = ["value": response]
        call.resolve(a)
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
        createView(message: value, webView: self.webView)
        let a : PluginResultData = ["value": status]
        call.resolve(a)
    }
    
    
    
    @objc func echo(_ call: CAPPluginCall) {
        call.resolve([
            "value":"lalala"
            ])
    }
    
    func createView(message: String, webView: WKWebView) {
        let view = UIView()
        view.backgroundColor = UIColor.red
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.addSubview(view)
        
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 14)
        label.text = message
        label.textColor = UIColor.white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 50),
            view.heightAnchor.constraint(equalToConstant: 50),
            view.centerXAnchor.constraint(equalTo: webView.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: webView.centerYAnchor)
            ])
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}
