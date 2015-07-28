//
//  EmojiString.swift
//  EmojiTextField
//
//  Created by xinglei on 15/7/28.
//  Copyright (c) 2015年 ZPlay. All rights reserved.
//

import UIKit

class EmojiString: NSAttributedString {
   
    override init() {
        super.init()
    }
    
    func gePlainString() ->NSString{
        var plainString = NSMutableString(string: self.string)
        var base : NSInteger = 0
//        self.enumerateAttribute(NSAttachmentAttributeName, inRange: NSMakeRange(0, self.length), options: NSAttributedStringEnumerationOptions) { (AnyObject!, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void in
//            if(AnyObject && AnyObject,isKindOfClass(EmojiTextAttachment)){
//                plainString.replaceCharactersInRange(NSRange, withString: EmojiString)
//            }
//            
//        }
        return plainString
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
