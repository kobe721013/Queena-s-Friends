//
//  MyViewController.swift
//  QueenaFriends
//
//  Created by kobe on 2017/11/11.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

class JamesViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
/*
         //show website
        let myURL : NSURL = NSURL(string: "https://www.youtube.com/watch?v=LWV-f6dMN3Q&list=RDEMoMor2aCQSmM5RhWeAOS5-A&index=5")!
        //Note: use the "embed" address instead of the "watch" address.
        let myURLRequest : NSURLRequest = NSURLRequest(url: myURL as URL)
        self.myWebView.loadRequest(myURLRequest as URLRequest)
  */
        
        //embeded youtube
        var youTubeVideoHTML: String = "<!DOCTYPE html><html><head><style>body{margin:0px 0px 0px 0px;}</style></head> <body> <div id=\"player\"></div> <script> var tag = document.createElement('script'); tag.src = \"http://www.youtube.com/player_api\"; var firstScriptTag = document.getElementsByTagName('script')[0]; firstScriptTag.parentNode.insertBefore(tag, firstScriptTag); var player; function onYouTubePlayerAPIReady() { player = new YT.Player('player', { width:'%0.0f', height:'%0.0f', videoId:'%@', events: { 'onReady': onPlayerReady, } }); } function onPlayerReady(event) { event.target.playVideo(); } </script> </body> </html>"

        var html: String = String(format: youTubeVideoHTML, self.view.frame.size.width, self.view.frame.size.height, "9lQCRCRfWzo")
        
        print("\(html)")

        self.myWebView.loadHTMLString(html, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "James P. Sullivan"
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
