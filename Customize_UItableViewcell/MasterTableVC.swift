//
//  MasterTableVC.swift
//  Customize_UItableViewcell
//
//  Created by Admin on 2/16/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    var arrayData: [DataItem]!
    var detailVC: DetailVC!
    var imgone: UIImageView!
    var imgtwo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.delegate = self
//        self.tableView.dataSource = self
        let item1: DataItem = DataItem.init(nameFC: "Manchester United", nameStd: "Old Trafford", imgLogo: "MU.png", imgStar: 5)
        let item2: DataItem = DataItem.init(nameFC: "Chelsea", nameStd: "Stamford Bridge", imgLogo: "Chelsea.png", imgStar: 4)
        let item3: DataItem = DataItem.init(nameFC: "Arsenal", nameStd: "Emirates", imgLogo: "Arsenal.png", imgStar: 4)
        let item4: DataItem = DataItem.init(nameFC: "Manchester City", nameStd: "Etihad", imgLogo: "MC.png", imgStar: 3)
        let item5: DataItem = DataItem.init(nameFC: "Liverpool", nameStd: "Anfield", imgLogo: "Liverpool", imgStar: 2)
        arrayData = [item1, item2, item3, item4, item5]
        
               self.tableView.registerNib(UINib(nibName:   "Customer_TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
//              self.tableView.registerClass(Customer_TableViewCell.self, forCellReuseIdentifier: "Cell")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }

    // phương thức này chạy đúng bằng số lần của arayData
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: Customer_TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! Customer_TableViewCell
        let item: DataItem = arrayData[indexPath.row]
        print(item.nameFootballClub)
        cell.labelFoodbalClub.text = item.nameFootballClub
        cell.labelStadium.text = item.nameStadium
        cell.imgeViewLogo.image = item.imageLogo
        cell.imgViewStarRating.image = item.imageStarRating
        

        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil{
            // cái này chỉ gọi đối tượng detailVC
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        }
        let item: DataItem = arrayData[indexPath.row]
        print("khoi tao \(detailVC.imageView)")
        detailVC.stringTitle = item.nameStadium
        var chitiet = DetailVC()
//        detailVC.imageView = UIImageView.init()
//        detailVC.imageView = UIImageView.init(image: UIImage(named: "Emirates.jpg"))
        print("khoi tao \(detailVC.imageView)")
        print("string Item: \(detailVC.stringTitle)")
        // chú ý biến stringTitle là biến được khai báo bằng ! nên nó bắt buộc nhân giá trị
        // cho nên đối tượng khai báo detaiVC gọi từ bên ngoài class DetailVC sẽ bị lỗi do stringTitle nhận giá trị nil
        // viewDidLoad() có ý nghĩa khởi tạo đối tượng 
//        detailVC.imageView!.image = UIImage(named: "Emirates.jpg")
//        print(chitiet.imageView)
//        print(chitiet.stringTitle)
//        detailVC.imageView nhận giá trị nill nên bị lỗi
        
//        detailVC.imageView = UIImageView()
//        detailVC.imageView.image = UIImage(named: "Emirates.jpg")

        
       

        // chú y khi nào push view thì mới gọi đến hàm viewDidload
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
