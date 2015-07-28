//
//  EmojiTextAttachment.swift
//  EmojiTextField
//
//  Created by xinglei on 15/7/28.
//  Copyright (c) 2015年 ZPlay. All rights reserved.
//

import UIKit

class EmojiTextAttachment: NSTextAttachment {
    
    var myimage = UIImage()
    internal var emojiTag = NSString()
    override init() {
        super.init()
//        self.image = myimage
    }
    

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
