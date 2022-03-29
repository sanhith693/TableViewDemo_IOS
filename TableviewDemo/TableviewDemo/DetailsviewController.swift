//
//  DetailsviewController.swift
//  TableviewDemo
//
//  Created by Gouravelly,Sanhith on 3/29/22.
//

import UIKit

class DetailsviewController: UIViewController {

    @IBOutlet weak var diaplyOutlet: UILabel!
    var product : product?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        diaplyOutlet.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) category"
    
    
    
    
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
