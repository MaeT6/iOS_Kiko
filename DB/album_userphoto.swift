//
//  album.swift
//  DB
//
//  Created by 岩見建汰 on 2015/11/19.
//  Copyright © 2015年 project03A. All rights reserved.
//

import UIKit

class album_userphoto: UIViewController {
    
    
    @IBOutlet weak var navigationbar: UINavigationBar!
    
    let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var backbutton = UIButton()
    
    
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBarImage = UIImage(named: "bar6.png") as UIImage?
        self.navigationbar.setBackgroundImage(navBarImage, forBarMetrics:. Default)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "haikei.png")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func segmentedchanged(sender: AnyObject) {
        switch sender.selectedSegmentIndex{
        case 0: //撮影写真
            appDelegate.pic_segmented = 0
            
        case 1: //サンプル写真
            appDelegate.pic_segmented = 1
            let targetViewController = self.storyboard!.instantiateViewControllerWithIdentifier("album_defaultphoto")
            self.presentViewController( targetViewController, animated: false, completion: nil)
            self.segmented.selectedSegmentIndex = 0         //選択を戻す
        default:
            break
        }
    }
    @IBAction func backbutton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)    }
}
