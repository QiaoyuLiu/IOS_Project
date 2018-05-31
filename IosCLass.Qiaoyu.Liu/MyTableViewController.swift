//
//  MyTableViewController.swift
//  IosCLass.Qiaoyu.Liu
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {


    @IBOutlet var Mytableview: UITableView!
    var Books = [Book]()
    var passbook:Book?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let book1 = Book ( Title : "Harryporter1",  Year : "1997",Author : "JKR",Detail: "It's a story of harry porter" ,BookImage: "hp")
        let book2 = Book ( Title : "Harryporter2",  Year : "2000",Author : "JKR",Detail: "another story of harry porter" ,BookImage: "hp2")
        let book3 = Book ( Title : "Harryporter3",  Year : "2003",Author : "JKR",Detail: "another story of harry porter", BookImage: "hp3")
        Books.append(book1)
        Books.append(book2)
        Books.append(book3)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellController
        let image = UIImage(named: (Books[indexPath.row].BookImage!))
        cell.Title?.text = Books[indexPath.row].Title
        cell.Author?.text = Books[indexPath.row].Author
        cell.Year?.text = Books[indexPath.row].Year
        cell.BookImage!.image = image
     
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        passbook = Books[indexPath.row]
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detailsegue", sender: cell)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let detailpage = segue.destination as! detailUIVIewController
        detailpage.book = passbook
        
    }
    

}
