//
//  Constant.swift
//  Travellers
//

import UIKit

let kDialogsPageLimit:UInt = 100

class Constant: NSObject
{
   
    //Appdelegate 
    static let APP_DELEGATE =  UIApplication.shared.delegate as! AppDelegate
    
    
    // MARK: -  APIs BNN


    //Live
    static let BASE_URL = "http://54.233.178.124:8081/api/"

    
    //MARK: - Macros
    
    
    static let userID = "userID"
    static let profileImage = "profileImage"

    static let userName = "userName"
    static let password = "password"
    static let isLoggedInAlready = "isLoggedInAlready"
    static let accessToken = "accessToken"
    static let deviceID = "deviceID"
    static let roleID = "roleID"
    static let roleMapID = "roleMapID"

    static let NETWORK_ERROR_MSG = "Please check your connection!"
    
    static let MALE = "male"
    static let FEMALE = "female"
    static let OTHER = "other"

    static let ROLE_ID_YOUTH = 8
    static let ROLE_ID_BILLI = 2
    static let ROLE_MAPPING_ID_SENIOR_BILLI = 6
    static let ROLE_MAPPING_ID_JUNIOR_BILLI = 5
    static let ROLE_ID_SP = 3
    
    
    static let MY_JOB = "MY_JOB"
    static let MY_APPLIED_JOB = "MY_APPLIED_JOB"
    static let APPLY_FOR_JOB = "APPLY_FOR_JOB"
    static let CREATE_JOB = "CREATE_JOB"
    
    
    static let ALL_EVENTS = "ALL_EVENTS"

    static let MY_EVENT = "MY_EVENT"
    static let EVENT_INVITES = "EVENT_INVITES"
    static let ATTENDED_EVENTS = "ATTENDED_EVENTS"

    static let FORUM = "FORUM"
    static let GROUP = "GROUP"

    
    
    
    
    
    static let NAVIGATION_BAR = "NAVIGATION_BAR"

    static let ddMMYYYY = "dd/MM/yyyy"

    static let ddMMMYYYY = "dd MMM yyyy"
    static let yyyyMMdd = "yyyy-MM-dd"
    static let yyyyMMddHHMMSS = "yyyy-MM-dd HH:mm:ss"
    static let yyyyMMddTHHmmssSSSSSSS = "yyyy-MM-dd'T'HH:mm:ss.SSS+SSSS"
    static let yyyyMMddTHHmmssSSS = "yyyy-MM-dd'T'HH:mm:ss.SSS"

    static let EVENT_GOING = "going"
    static let EVENT_NOT_GOING = "notgoing"
    static let EVENT_ATTENDED = "attended"
    static let EVENT_PENDING = "pending"


    static let PLACE_HOLDER_PROFILE = "user_gray_filled.png"
    static let PLACE_HOLDER_PROFILE_WHITE = "user_white_bordered.png"

    static let PLACE_HOLDER_GENERAL = "bnn.png"

    //MARK: - Limit for Pagination
    
    static let kLimit:UInt =  20

     // MARK: -  Running Device
    static let SCREEN_WIDTH = UIScreen.main.bounds.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.height
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.height < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.height == 568.0
    static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.height == 667.0
    static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.height == 736.0
    static let IS_IPHONE_X          = UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.bounds.height == 812.0
    
    // MARK: -  Color  Macros

    static let NAV_BAR_COLOR =  UIColor.init(red: 0.0/255.0, green: 179.0/255.0, blue: 119.0/255.0, alpha: 1)
    
    
    static let NAV_TEXT_COLOR =  UIColor.init(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1)
    
    static let BUTTON_PINK_COLOR =  UIColor.init(red: 220.0/255.0, green: 23.0/255.0, blue: 111.0/255.0, alpha: 1)

    static let ORANGE_COLOR =  UIColor.init(red: 246.0/255.0, green: 171.0/255.0, blue: 25.0/255.0, alpha: 1)
  
    static let TEXT_BLACK_COLOR =  UIColor.black//init(red: 28.0/255.0, green: 28.0/255.0, blue: 28.0/255.0, alpha: 1)

    static let TEXT_GRAY_COLOR =  UIColor.init(red: 207.0/255.0, green: 207.0/255.0, blue: 211.0/255.0, alpha: 1)

    static let PLACEHOLDER_GRAY_COLOR =  UIColor.init(red: 199.0/255.0, green: 199.0/255.0, blue: 199.0/255.0, alpha: 1)

    static let SEGMENT_GREEN_COLOR =  UIColor.init(red: 47.0/255.0, green: 82.0/255.0, blue: 66.0/255.0, alpha: 1)

    
    // MARK: -  Other Sizes

    static let CORNER_RADIUS = CGFloat(5)
    
    
    
    
    // MARK: -  Font macros
    static let FONT_BOLD_12    =  UIFont(name: "Comfortaa-Bold", size: CGFloat(12))
    static let FONT_BOLD_14    =  UIFont(name: "Comfortaa-Bold", size: CGFloat(14))
    static let FONT_BOLD_15    =  UIFont(name: "Comfortaa-Bold", size: CGFloat(15))
    static let FONT_BOLD_16    =  UIFont(name: "Comfortaa-Bold", size: CGFloat(16))
    static let FONT_BOLD_17    =  UIFont(name: "Comfortaa-Bold", size: CGFloat(17))

    
    static let FONT_LIGHT_12    =  UIFont(name: "Comfortaa-Light", size: CGFloat(12))
    static let FONT_LIGHT_14    =  UIFont(name: "Comfortaa-Light", size: CGFloat(14))
    static let FONT_LIGHT_15    =  UIFont(name: "Comfortaa-Light", size: CGFloat(15))
    static let FONT_LIGHT_16    =  UIFont(name: "Comfortaa-Light", size: CGFloat(16))
    static let FONT_LIGHT_17    =  UIFont(name: "Comfortaa-Light", size: CGFloat(17))

    static let FONT_REGULAR_12    =  UIFont(name: "lato_regular", size: CGFloat(12))
    static let FONT_REGULAR_14    =  UIFont(name: "lato_regular", size: CGFloat(14))
    static let FONT_REGULAR_15    =  UIFont(name: "lato_regular", size: CGFloat(15))
    static let FONT_REGULAR_16    =  UIFont(name: "lato_regular", size: CGFloat(16))
    static let FONT_REGULAR_17    =  UIFont(name: "Helvetica", size: CGFloat(17))

}
