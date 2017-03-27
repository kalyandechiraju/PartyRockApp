//
//  VideoViewController.swift
//  PartyRock
//
//  Created by Kalyan Dechiraju on 27/03/17.
//  Copyright © 2017 Codelight Studios. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    private var _partyRockItem: PartyRockModel!
    
    var partyRockItem: PartyRockModel {
        get {
            return _partyRockItem
        } set {
            _partyRockItem = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(_partyRockItem.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
