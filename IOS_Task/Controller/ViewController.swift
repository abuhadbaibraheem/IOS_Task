//
//  ViewController.swift
//  IOS_Task
//
//  Created by Heema Boss on 2/18/18.
//  Copyright © 2018 Heema Boss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var Btn_All: UIButton!
    @IBOutlet weak var Btn_Action: UIButton!
    @IBOutlet weak var Btn_231: UIButton!
    @IBOutlet weak var Btn_All_Location: UIButton!
    @IBOutlet weak var Btn_Down: UIButton!
     var http = HttpHelper()
      var billObj = Root()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            Btn_231_F()
            Btn_All_Location_F()
            Btn_All_F()
            Btn_Down_F()
            Btn_Action_f()
            TableView.dataSource = self
            TableView.delegate = self
            http.delegate = self
            TableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        getServer()
    }
    
    private func getServer() {
        
        let params = ["page":"0","size":"10"]
        let url = "https://45.55.43.15:9090/api/machine"
     http.Get(url: url, parameters: params, Tag: 1, headers: ["Authorization":"Basic YWRtaW5AYm9vdC5jb206YWRtaW4="])
        
    }
    
    func Btn_231_F()  {
      Btn_231.layer.cornerRadius = 8
    }
    
    func Btn_All_Location_F()  {
//        Btn_All_Location.layer.cornerRadius = 8
        Btn_All_Location.titleEdgeInsets.top = 10
        Btn_All_Location.titleEdgeInsets.bottom = 10
        Btn_All_Location.titleEdgeInsets.left = 10
        Btn_All_Location.titleEdgeInsets.right = 10
        Btn_All_Location.layer.borderColor = UIColor.gray.cgColor
        Btn_All_Location.layer.borderWidth = 0.3
    }
    
    func Btn_All_F()  {
//        Btn_All.layer.cornerRadius = 8
        Btn_All.titleEdgeInsets.top = 10
        Btn_All.titleEdgeInsets.bottom = 10
        Btn_All.titleEdgeInsets.left = 10
        Btn_All.titleEdgeInsets.right = 10
    }
    
    func Btn_Down_F()  {
//        Btn_Down.layer.cornerRadius = 8
        Btn_Down.layer.borderColor = UIColor.gray.cgColor
        Btn_Down.titleEdgeInsets.top = 10
        Btn_Down.titleEdgeInsets.bottom = 10
        Btn_Down.titleEdgeInsets.left = 10
        Btn_Down.titleEdgeInsets.right = 10
        Btn_Down.layer.borderWidth = 0.3
    }
    
    func Btn_Action_f()  {
//        Btn_Action.layer.cornerRadius = 8
        Btn_Action.titleEdgeInsets.top = 10
        Btn_Action.titleEdgeInsets.bottom = 10
        Btn_Action.titleEdgeInsets.left = 10
        Btn_Action.titleEdgeInsets.right = 10
        Btn_Action.layer.borderColor = UIColor.gray.cgColor
        Btn_Action.layer.borderWidth = 0.3
    }
    
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return billObj.content1.count
        return 10
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        return cell
    }
}

extension ViewController: HttpHelperDelegate {
    
    func receivedResponse(dictResponse: Any, Tag: Int) {
        let dictResponse = dictResponse as! NSDictionary
        billObj = Root(JSON: dictResponse as! [String:Any])!
    
    }
    
    func receivedErrorWithStatusCode(statusCode: Int) {
        
        print(statusCode)
    }
    
    func retryResponse(numberOfrequest: Int) {
        
    }
}







