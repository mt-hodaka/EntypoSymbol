//
//  EntypoSymbol
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

import UIKit

open class EntypoSymbol {
    
    var text:NSString = ""
    var mutableTextFontAttributes = [String : AnyObject]()
    
    public init(text:NSString, size:CGFloat) {
        self.text = text
        
        self.mutableTextFontAttributes = [String : AnyObject]()
        self.mutableTextFontAttributes[NSParagraphStyleAttributeName] = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        
        self.mutableTextFontAttributes[NSFontAttributeName] = EntypoFont.fontOfSize(size)
    }
    
    open func addAttribute(_ attributeName:NSObject, value:AnyObject) {
        self.mutableTextFontAttributes[attributeName as! String] = value
    }
    
    open func imageWithSize(_ size:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        
        let textRect  = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.text.draw(in: textRect, withAttributes: self.mutableTextFontAttributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return image!
    }
}
