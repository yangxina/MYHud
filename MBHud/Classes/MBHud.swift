
//
//  MBHud.swift
//  MBHud
//
//  Created by 小星星 on 2018/5/4.
//

import Foundation
import MBProgressHUD
open class MBHud {
    open class func show() {
        if let window = UIApplication.shared.delegate?.window {
            MBProgressHUD.showAdded(to: window!, animated: true)
        }
    }
    
    open class func hide() {
        if let window = UIApplication.shared.delegate?.window {
            MBProgressHUD.hide(for: window!, animated: true)
        }
    }
}
open class MBAlert: NSObject{
    
    public enum AlertType {
        case success
        case info
        case error
        case warning
        case nono
    }
    
    open class func show(type: AlertType, text: String) {
        if let window = UIApplication.shared.delegate?.window {
            var image: UIImage?
            switch type {
            case .success:
                image = self.fundImage(imageName:"success")
            case .info:
                image = self.fundImage(imageName: "info")
            case .error:
                image = self.fundImage(imageName: "error")
            case .warning:
                image = self.fundImage(imageName: "warning")
            case .nono:
                image = self.fundImage(imageName: "nono")
            }
            let hud = MBProgressHUD.showAdded(to: window!, animated: true)
            hud.backgroundColor = UIColor.lightGray.withAlphaComponent(0.05)
            hud.mode = .customView
            hud.customView = UIImageView(image:image)
            hud.label.text = text
            hud.hide(animated: true, afterDelay: 1.5)
        }
    }
    
    class func fundImage(imageName:String) -> UIImage{
        
        let bundleB  = Bundle(for: self.classForCoder()) //先找到最外层Bundle
        let resrouseURL = bundleB.url(forResource: "MBHud", withExtension: "bundle")
        let bundle = Bundle(url: resrouseURL!) // 根据URL找到自己的Bundle
        let image = UIImage.init(named: imageName, in: bundle , compatibleWith: nil) //在自己的Bundle中找图片
        return image!
    }
}
