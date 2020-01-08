//
//  connViewController.swift
//  jsonprac
//
//  Created by apple on 01/01/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit




class connViewController: UIViewController {

    @IBOutlet weak var lableVC: UILabel!
    @IBOutlet weak var imgVC: UIImageView!
    
    //var connimgLable:name?
    var lablTitle = ""
//    var imgTitle = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
//        imgVC.image = imgTitle
        lableVC.text = lablTitle
//        let viewImg = imgTitle
//         imgVC.downloadedFrom(url: viewImg)
//  let stringurl = URL(string: "https://api.androidhive.info/json/movies.json")
//
//        imgVC.downloadedFrom(link: stringurl)
//
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
