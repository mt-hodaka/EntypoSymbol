//
//  EntypoFont
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

import UIKit

open class EntypoFont {
    
    open class func fontOfSize(_ fontSize: CGFloat) -> UIFont {
        
        let name = "entypo"
        if (UIFont.fontNames(forFamilyName: name).count == 0) {
            FontLoader.loadFont(name)
        }
        
        return UIFont(name: name, size: fontSize)!
    }
}
