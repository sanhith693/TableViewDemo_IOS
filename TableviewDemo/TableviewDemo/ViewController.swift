//
//  ViewController.swift
//  TableviewDemo
//
//  Created by Gouravelly,Sanhith on 3/29/22.
//

import UIKit

class product{
    var productName : String?
    var productCategory : String?
    init(prodName: String, prodCategory: String){
        self.productName = prodName;
        self.productCategory = prodCategory;
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusablecell", for: indexPath)
        
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell
        
        
    }
    
    var productArray = [product]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
     
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = product(prodName: "iphone", prodCategory: "phone")
        productArray.append(product1)
        let product2 = product(prodName: "macbook", prodCategory: "laptop")
        productArray.append(product2)
        let product3 = product(prodName: "homepod", prodCategory: "speaker")
        productArray.append(product3)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as!
            DetailsviewController
            destination.product = productArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }
}

