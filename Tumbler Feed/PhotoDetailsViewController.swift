//
//  PhotoDetailsViewController.swift
//  Tumbler Feed
//
//  Created by Pratik Koirala on 2/7/17.
//  Copyright © 2017 Pratik Koirala. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var feedImageView: UIImageView!
    
    @IBOutlet weak var summaryLabel: UILabel!
    var post: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()        
        //Get the image url of the specific post selected
        if let photos = post.value(forKeyPath: "photos") as? [NSDictionary]{
            let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = URL(string: imageUrlString!){
                feedImageView.setImageWith(imageUrl)
                
            }
        }
        
        // Show the summary of the post selected
        summaryLabel.text = post["summary"] as? String
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
