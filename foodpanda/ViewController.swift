//
//  ViewController.swift
//  foodpanda
//
//  Created by Eddy Chen on 2019/11/4.
//  Copyright © 2019 Eddy Chen. All rights reserved.
//

import UIKit


class RestaurantTableViewCell:UITableViewCell{
    
    //cell區
    @IBOutlet weak var imageCell: UIImageView!    //店家照片
    
    @IBOutlet weak var titleCell: UILabel!        //店家名稱
    @IBOutlet weak var subtitleCell: UILabel!     //餐廳介紹
    
    @IBOutlet weak var priceCell: UILabel!        //運費
    @IBOutlet weak var starCell: UILabel!         //評價
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        
    
    //navigation bar的title
    @IBOutlet weak var titleButton: UIButton!
    @IBAction func titleButton(_ sender: UIButton) {
    }
    
    //篩選圖的button
    @IBOutlet weak var filterButton: UIButton!
    @IBAction func filterButton(_ sender: UIButton) {
    }
    
    //table view cell區塊
    @IBOutlet weak var myTableView: UITableView!

    

    var titleArray = ["周胖子餃子館","八方雲集","茶湯會","石二鍋","慢慢點"]  //照片名稱

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RestaurantTableViewCell else {
        return UITableViewCell()
        }
        
        cell.imageCell.image = UIImage(named: titleArray[indexPath.row])
        cell.titleCell.text = titleArray[indexPath.row]
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //篩選器旋轉
        filterButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }


}

