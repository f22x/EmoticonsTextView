//
//  ViewController.swift
//  EmojiTextField
//
//  Created by xinglei on 15/7/28.
//  Copyright (c) 2015年 ZPlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTextView = UITextView()
    var emojiText = EmojiTextAttachment()
    var emojiImages = NSArray()
    var emojiImageViews = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiImages = ["[/emoji_1]", "[/emoji_2]", "[/emoji_3]", "[/emoji_4]"]
        emojiImageViews = [UIImage(named: "emoji_1_big")!,UIImage(named: "emoji_2_big")!,UIImage(named: "emoji_3_big")!,UIImage(named: "emoji_4_big")!]
        myTextView = UITextView(frame: CGRectMake(0, 0, 320, 480))
        view.addSubview(myTextView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func removeAttributedString(){
        var range : NSRange = NSMakeRange(0, myTextView.selectedRange.length)
        myTextView.textStorage.removeAttribute(NSFontAttributeName, range: range)
        myTextView.textStorage.addAttribute(NSFontAttributeName, value: 22, range: range)
    }
    
    @IBAction func insertEmoji(sender: AnyObject) {
        //        每次都创建一个emoji
        emojiText = EmojiTextAttachment()
        var insertImage: AnyObject = emojiImageViews.objectAtIndex(sender.tag-1)
        emojiText.image = insertImage as? UIImage
        emojiText.emojiTag = (emojiImages.objectAtIndex(sender.tag-1) as? NSString)!
        myTextView.textStorage.insertAttributedString(NSAttributedString(attachment: emojiText), atIndex: myTextView.selectedRange.location)
        //        每一次重新计算字符串的位置
        myTextView.selectedRange = NSMakeRange(myTextView.selectedRange.location+1, myTextView.selectedRange.length)
//        self.removeAttributedString()
    }

}

