//
//  detailUIVIewController.swift
//  IosCLass.Qiaoyu.Liu
//
//  Created by epita on 30/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class detailUIVIewController: UIViewController {
    var book : Book?
    
    @IBOutlet weak var bgimage: UIImageView!
    @IBOutlet weak var detail: UITextView!
    @IBOutlet weak var booktitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        booktitle.text = book?.Title
        detail.text = book?.Detail
        bgimage.image = UIImage(named: (book?.BookImage)!)       // Do any additional setup after loading the view.
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
