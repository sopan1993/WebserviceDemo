//
//  ViewController.swift
//  WebserviceDemo
//
//  Created by Shirish Vispute on 21/02/19.
//  Copyright © 2019 Bitware Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

/*
 @IBAction func submitClicked(_ sender: Any) {
 
 if emailTf.text == ""
 {
 self.showAlertWithTitle2(title : "" , message : "Please enter email")
 }
 else if !(emailTf.text?.isValidEmail())!
 {
 self.showAlertWithTitle2(title : "" , message : "Please enter valid email")
 }
 else
 {
 var reachability : Reachability!
 reachability = Reachability()
 AppUtility.showActivityIndicator(uiView: self.view)
 if reachability!.isReachable
 {
 
 DispatchQueue.main.async {
 
 
 let parameter: Dictionary = [
 "email": self.emailTf.text!
 
 ]
 
 print(parameter)
 self.forgotPassword_webserviceCall(parameter: parameter)
 }
 }
 else
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 WebHandlerNew.showAlertWithTitle(title: "", message:WebHandlerNew.NoInternetConnection as NSString)
 }
 }
 }
 //MARK: - WebService Call
 func login_WebserviceCall(parameter: Dictionary<String, Any>)
 {
 let webHandlerObj = WebHandlerNew()
 webHandlerObj.delegate = self
 let url = WebHandlerNew.mainUrl + "api/auth/login"
 webHandlerObj.doRequestPost(parameters: parameter as AnyObject, urlStr : url as NSString,number:"LOGIN")
 }
 
 func forgotPassword_webserviceCall(parameter: Dictionary<String, Any>)
 {
 
 let webHandlerObj = WebHandlerNew()
 webHandlerObj.delegate = self
 let url = WebHandlerNew.mainUrl + "api/password/email"
 webHandlerObj.doRequestPost(parameters: parameter as AnyObject, urlStr : url as NSString,number:"FORGOT")
 
 }
 */


/*
 func APIResponseArrived(_ Response: AnyObject, error: String, number: String) {
 
 //AppUtility.hideActivityIndicator(uiView: self.view)
 if error != "0"
 {
 if number == "FORGOT"
 {
 
 if Response is Dictionary<String, AnyObject>
 {
 print(Response)
 if 401 == Response.object(forKey:"code") as? Int
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 let msg = Response.object(forKey:"msg") as? String
 self.showAlertWithTitle2(title : "" , message : msg! as NSString)
 }
 else if 403 == Response.object(forKey:"code") as? Int
 {
 let msg = Response.object(forKey:"msg") as? String
 AppUtility.hideActivityIndicator(uiView: self.view)
 self.showAlertLast(msg: "Your session has been expired.Please login again.")
 }
 else
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 if let status =  Response.object(forKey:"success") as? Int
 {
 
 if status == 1
 {
 let message = Response.object(forKey:"msg") as? String
 
 self.showAlert1(msg : message!)
 }
 else
 {
 
 }
 }
 }
 
 }
 
 }
 else if number == "LOGIN"
 {
 if Response is Dictionary<String, AnyObject>
 {
 print(Response)
 
 if 401 == Response.object(forKey:"code") as? Int
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 let msg = Response.object(forKey:"msg") as? String
 self.showAlertWithTitle2(title : "" , message : msg! as NSString)
 }
 else if 403 == Response.object(forKey:"code") as? Int
 {
 let msg = Response.object(forKey:"msg") as? String
 AppUtility.hideActivityIndicator(uiView: self.view)
 self.showAlertLast(msg: "Your session has been expired.Please login again.")
 }
 else
 {
 if let status =  Response.object(forKey:"success") as? Int
 {
 if status == 1
 {
 let message = Response.object(forKey:"msg") as? String
 let user = Response
 let defaults =  UserDefaults.standard
 defaults.set(user["token"] as! String, forKey: "token")
 defaults.set(user["user_id"] as! Int, forKey: "user_id")
 defaults.set(user["wt_id"] as! String, forKey: "wt_id")
 
 if let wlb = (user["wt_line_balance"] as? NSString)?.intValue {
 defaults.set(wlb , forKey: "wt_line_balance")
 print(defaults.value(forKey: "wt_line_balance")!)
 
 }
 
 defaults.set(user["user_phone"] as! String, forKey: "user_phone")
 defaults.set(user["email"] as! String, forKey: "email")
 defaults.set(user["user_username"] as! String, forKey: "user_username")
 defaults.set(user["user_firstname"] as! String, forKey: "user_firstname")
 defaults.set(user["user_lastname"] as! String, forKey: "user_lastname")
 defaults.set(user["user_picture"] as! String, forKey: "user_picture")
 
 defaults.set(user["role"] as! String, forKey: "role")
 defaults.synchronize()
 UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
 AppUtility.hideActivityIndicator(uiView: self.view)
 self.showAlertWithTitle(title : "" , message : message! as NSString,vc:"SW")
 }
 }
 }
 }
 else
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 }
 
 }
 
 }//
 else
 {
 AppUtility.hideActivityIndicator(uiView: self.view)
 showAlert(msg : WebHandlerNew.somthingWrongMsg)
 print("NewtWork error")
 }
 
 }*/


/*
 func get_HomePageData()
 {
 let webHandlerObj = WebHandlerNew()
 webHandlerObj.delegate = self
 // self.ShowLoader()
 AppUtility.showActivityIndicator(uiView: view)
 var reachability : Reachability!
 reachability = Reachability()
 if reachability!.isReachable
 {
 
 DispatchQueue.main.async
 {
 self.ShowLoader()
 
 let url = WebHandlerNew.mainUrl + "api/home"
 print(url)
 webHandlerObj.doRequestGet2(urlStr : url as NSString,number: "HOME",token: UserDefaults.standard.value(forKey: "token")! as! String)
 }
 
 }
 else
 {
 
 AppUtility.hideActivityIndicator(uiView: view)
 WebHandlerNew.showAlertWithTitle(title: "", message:WebHandlerNew.NoInternetConnection as NSString)
 }
 
 }
 */


/*
 class func showActivityIndicator(uiView: UIView)
 {
 DispatchQueue.main.async {
 container.frame = uiView.frame
 container.center = uiView.center
 // container.backgroundColor = UIColor.
 loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
 loadingView.center = uiView.center
 loadingView.backgroundColor = UIColor.init(red: 68.0/255, green: 68.0/255, blue: 68.0/255, alpha: 0.7)
 loadingView.clipsToBounds = true
 loadingView.layer.cornerRadius = 10
 
 activityIndicator.frame = CGRect(x: 0, y: 0, width: 40.0, height: 40.0)
 activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
 activityIndicator.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2 - 18)
 label.frame = CGRect(x: 0, y: 0, width: 80.0, height: 21.0)
 label.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height - 25)
 label.text = "Loading..."
 label.textColor = .white
 label.textAlignment = .center
 loadingView.addSubview(label)
 loadingView.addSubview(activityIndicator)
 container.addSubview(loadingView)
 uiView.addSubview(container)
 uiView.isUserInteractionEnabled = false
 activityIndicator.startAnimating()
 }
 }
 
 class func hideActivityIndicator(uiView: UIView)
 {
 DispatchQueue.main.async {
 activityIndicator.stopAnimating()
 uiView.isUserInteractionEnabled = true
 container.removeFromSuperview()
 }
 }*/
