//
//  ViewController.swift
//  ListParseTableDemo
//
//  Created by user140892 on 8/14/18.
//  Copyright © 2018 demo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class UserListController: UIViewController {
    
    @IBOutlet weak var activityIndicatorProgress: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers(page: "1")
    }
    
    func getUsers(page: String){
        if(!page.isEmpty){
            let url = ApiList.init(page: "1").getUserList()
            print(url)
            
            Alamofire.request(url).responseJSON{response in
                print("response : \(response)")
                
                if let value = response.result.value{
                
                    let json = JSON(value)
                    
                    self.parseJson(json: json)
                    
                }
            }
        }
    }
    
    func parseJson(json: JSON){
        let userPic = json["data"][0]["avatar"].stringValue
        let firstName = json["data"][0]["first_name"].stringValue
        let lastName = json["data"][0]["last_name"].stringValue
        
        let user: User = User.init(userPic: userPic, firstName: firstName, lastName: lastName)
        //UserCell.setDataToLayout(user: user)
    }
}

