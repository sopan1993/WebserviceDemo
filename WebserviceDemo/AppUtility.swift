//
//  AppUtility.swift
//  Travellers
//
import UIKit
import Foundation

var container: UIView = UIView()
var loadingView: UIView = UIView()
var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()

extension Date {
    var ticks: UInt64 {
        return UInt64((self.timeIntervalSince1970 + 62_135_596_800) * 10_000_000)
    }
}
extension UIButton {
    /// 0 => .ScaleToFill
    /// 1 => .ScaleAspectFit
    /// 2 => .ScaleAspectFill
    @IBInspectable
    var imageContentMode: Int {
        get {
            return self.imageView?.contentMode.rawValue ?? 0
        }
        set {
            if let mode = UIView.ContentMode(rawValue: newValue),
                self.imageView != nil {
                self.imageView?.contentMode = mode
            }
        }
    }
    
    
    
    func setButtonUI(cRadius:CGFloat,bordercolor:CGColor,backGroundColor:UIColor)
    {
        self.backgroundColor = backGroundColor
        self.layer.cornerRadius = cRadius
        self.layer.borderWidth = 1
        self.layer.borderColor = bordercolor
    }

}

extension String
{
    var isPhoneNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.characters.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.characters.count
            } else {
                return false
            }
        } catch {
            return false
        }
    }
    
    
}
extension UILabel
{
    func setBottomBorder() {
        
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }

}

extension UITextField {
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
   
    func setTextField_BorderColor_CornerRadius(cRadius:CGFloat,bWidth:CGFloat,bColor:CGColor)
    {
        
        self.layer.cornerRadius = cRadius
        self.layer.borderWidth = bWidth
        self.layer.borderColor = bColor
    }

    
}
/// Added  by Sopan

@IBDesignable extension UIView {
    @IBInspectable var borderColorV: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidthV: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadiusV: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}
@IBDesignable extension UIButton {
    @IBInspectable var borderColorB: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidthB: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadiusB: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}

@IBDesignable extension UITextField{
    @IBInspectable var borderColorT: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidthT: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadiusT: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}


@IBDesignable extension UIImageView {
    @IBInspectable var borderColorI: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidthI: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadiusI: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
    //Call like this: uiimage.roundCorners([.topLeft, .topRight], radius: 10)

    
    
}

///
extension UITextView {
    
    func addBottomBorderWithColor(color: UIColor, height: CGFloat) {
        let border = UIView()
        border.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        border.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y+self.frame.height-height, width: self.frame.width, height: height)
        border.backgroundColor = color
        self.superview!.insertSubview(border, aboveSubview: self)
    }
    
    
    
    
    
    func setTextView_BorderColor_CornerRadius(cRadius:CGFloat,bWidth:CGFloat,bColor:CGColor)
    {
        
        self.layer.cornerRadius = cRadius
        self.layer.borderWidth = bWidth
        self.layer.borderColor = bColor
    }

}
extension UIView {
    
    func setViewUI(cRadius:CGFloat,bordercolor:CGColor)
    {
        
        self.layer.cornerRadius = cRadius
        self.layer.borderWidth = 1
        self.layer.borderColor = bordercolor
    }
    
    func addshadow(top: Bool,
                   left: Bool,
                   bottom: Bool,
                   right: Bool,
                   shadowRadius: CGFloat = 2.0) {
        
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 0.5
        
        let path = UIBezierPath()
        var x: CGFloat = 0
        var y: CGFloat = 0
        var viewWidth = self.frame.width
        var viewHeight = self.frame.height
        
        // here x, y, viewWidth, and viewHeight can be changed in
        // order to play around with the shadow paths.
        if (!top) {
            y+=(shadowRadius+1)
        }
        if (!bottom) {
            viewHeight-=(shadowRadius+1)
        }
        if (!left) {
            x+=(shadowRadius+1)
        }
        if (!right) {
            viewWidth-=(shadowRadius+1)
        }
        // selecting top most point
        path.move(to: CGPoint(x: x, y: y))
        // Move to the Bottom Left Corner, this will cover left edges
        /*
         |☐
         */
        path.addLine(to: CGPoint(x: x, y: viewHeight))
        // Move to the Bottom Right Corner, this will cover bottom edge
        /*
         ☐
         -
         */
        path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
        // Move to the Top Right Corner, this will cover right edge
        /*
         ☐|
         */
        path.addLine(to: CGPoint(x: viewWidth, y: y))
        // Move back to the initial point, this will cover the top edge
        /*
         _
         ☐
         */
        path.close()
        self.layer.shadowPath = path.cgPath
        
    }

    func addDropShadowToView(targetView:UIView? ){
        targetView!.layer.masksToBounds =  false
        targetView!.layer.shadowColor = UIColor.darkGray.cgColor;
        targetView!.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        targetView!.layer.shadowOpacity = 1.0
    }
    
    
        
        @IBInspectable var shadowOffset: CGSize{
            get{
                return self.layer.shadowOffset
            }
            set{
                self.layer.shadowOffset = newValue
            }
        }
        
        @IBInspectable var shadowColor: UIColor{
            get{
                return UIColor(cgColor: self.layer.shadowColor!)
            }
            set{
                self.layer.shadowColor = newValue.cgColor
            }
        }
        
        @IBInspectable var shadowRadius: CGFloat{
            get{
                return self.layer.shadowRadius
            }
            set{
                self.layer.shadowRadius = newValue
            }
        }
        
        @IBInspectable var shadowOpacity: Float{
            get{
                return self.layer.shadowOpacity
            }
            set{
                self.layer.shadowOpacity = newValue
            }
        }
    
  
    
    
}

class AppUtility: NSObject
{
    
    //MARK: - Class Methods
   class func nullToNil(value : AnyObject?) -> AnyObject? {
        if value is NSNull {
            return nil
        } else {
            return value
        }
    }

    class func addPaddingToTextField(tf : UITextField)
    {
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        tf.leftView = paddingView
        tf.leftViewMode = UITextField.ViewMode.always
    }
    
    class  func isValidEmail(testStr:String) -> Bool
    {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    class  func isValidName(testStr:String) -> Bool
    {
        let emailRegEx = "^[A-Za-z]+$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }

    class  func isValidUserName(testStr:String) -> Bool
    {
        let emailRegEx = "^[A-Za-z]+${4,15}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    class  func isValidPassword(testStr:String) -> Bool
    {
        let emailRegEx = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{6,}$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    class func getAttributedStringFromString(myString : String , linespacing : CGFloat , font : UIFont , strColor : UIColor) -> NSAttributedString
    {
        let attributedStyle = NSMutableParagraphStyle()
        attributedStyle.lineSpacing = linespacing
        attributedStyle.alignment = NSTextAlignment.center
        let myAttributedString = NSMutableAttributedString (string: myString)
        
        let myAttributes :Dictionary = [NSAttributedString.Key.paragraphStyle : attributedStyle,
                                        NSAttributedString.Key.font : font,
                                        NSAttributedString.Key.foregroundColor : strColor]
        myAttributedString.addAttributes(myAttributes, range: NSMakeRange(0, myAttributedString.length))
        return myAttributedString;
    }
    class func dateComponentFromNSDate(date: Date)-> DateComponents
    {
        let units: Set<Calendar.Component> = [.hour, .day, .month, .year]
        let dateComponents = Calendar.current.dateComponents(units, from: date)
        return dateComponents
    }
    
   class func calcAge(birthday: String) -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS+SSSS"
        let birthdayDate = dateFormater.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let now = Date()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
        let age = calcAge.year
        return String(age!)
    }

    class func convertDate(dateString : String, inputFormat:String!, outputFormat:String!) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = inputFormat
        let showDate = inputFormatter.date(from: dateString)
        if showDate == nil
        {
            return "error"
        }
        inputFormatter.dateFormat = outputFormat
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }

    
    class func convertddMMyyyyDateToServerFormat(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd/MM/yyyy"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    class func convertddMMMyyyyEEEEDateToServerFormat(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd MMM yyyy EEEE"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    class func convertHHMMToServerFormat(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "H:mm"
        let showDate = inputFormatter.date(from: dateString)
        if(showDate == nil) {
            return dateString
        }
        inputFormatter.dateFormat = "HH:mm:ss"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    class func convertServerTimeToHHMM(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "HH:mm:ss"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "H:mm"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    class func convertServerDateToDateAndTime(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var showDate = inputFormatter.date(from: dateString)
        if(showDate == nil) {
            inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            showDate = inputFormatter.date(from: dateString)
        }
        inputFormatter.dateFormat = "dd MMM yyyy, h:mm a"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    
    class func convertddMMMyyyyDateToServerFormat(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "d MMM, yyyy"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    class func formattedDateFromString(dateString: String, withFormat format: String) -> String? {
        
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = inputFormatter.date(from: dateString) {
            
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = format
            print(outputFormatter.string(from: date))
            return outputFormatter.string(from: date)
        }
        
        return nil
    }
    

    class func convertServerDateTodMMMDate(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd/MM/yyyy"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    

    class func convertServerDateToddMMyyyyNew(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = Locale(identifier: "en_US_POSIX")
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let showDate = inputFormatter.date(from: dateString)
        if showDate == nil
        {
            return ""
        }
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    class func convertSystemDateTohhmm(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "hh:mm a"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    
    class func convertSystemDateToddMMMyyyyEEEE(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = "dd MMM yyyy EEEE"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    class func convertServerDateTimeToRequiredFormat(dateString : String, format:String!) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = format
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    class func convertToLocalTimeZone(dateString : String, format:String!) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        inputFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
        let showDate = inputFormatter.date(from: dateString)
        inputFormatter.dateFormat = format
        inputFormatter.timeZone = TimeZone.current
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    


    class func convertServerDateToddMMMyyyy(dateString : String) -> String
    {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var showDate = inputFormatter.date(from: dateString)
        if(showDate == nil) {
            inputFormatter.dateFormat = "yyyy-MM-dd"
            showDate = inputFormatter.date(from: dateString)
        }
        inputFormatter.dateFormat = "dd MMM, yyyy"
        let resultString = inputFormatter.string(from: showDate!)
        return resultString
    }
    
    
    class func showAlertWithTitle(title : String , message: String , viewController:UIViewController)
    {
        //        if let topController = UIApplication.topViewController() {
        //            if(topController == viewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:
            { (UIAlertAction) in
        }))
        
        viewController.present(alert, animated: true, completion: nil)
    }
    
    class func showAlertWithTitle(title : String , message: String , viewController:UIViewController ,OkButtonMethod:@escaping (Bool) -> (Void))
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:
            { (UIAlertAction) in
                
                OkButtonMethod(true)
        }))
        
        viewController.present(alert, animated: true, completion: nil)
        
    }
    
    class func showAlertToSelectYESNOWithTitle(title : String , message: String , viewController:UIViewController ,OkButtonMethod:@escaping (Bool) -> (Void))
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "YES", style: UIAlertAction.Style.default, handler:
            { (UIAlertAction) in
                
                OkButtonMethod(true)
        }))
        alert.addAction(UIAlertAction(title: "NO", style: UIAlertAction.Style.default, handler:
            { (UIAlertAction) in
                
                OkButtonMethod(false)
        }))
        
        viewController.present(alert, animated: true, completion: nil)
        
    }
    
    
    class func getFormatedString(myString : String) -> String
    {
        if myString.isEmpty
        {
            let returnFormatedStr = ""
            return returnFormatedStr
        }
        return myString
    }
    
    class func saveInUserDefaults(myKey: String , myValue : Any)
    {
        let defaults = UserDefaults.standard
        defaults.set(myValue, forKey: myKey)
        defaults.synchronize()
    }
    
    class func getFromUserDefaultsWithKey(myKey: String) -> Any?
    {
        let defaults = UserDefaults.standard
        return defaults.value(forKey: myKey)
    }
    
    class func saveObjectInUserDefault(value : Any, key : String) {
        UserDefaults.standard.set(NSKeyedArchiver.archivedData(withRootObject: value), forKey: key)
    }
    
    class func getObjectFromUserDefaults(key : String) -> Any? {
        if let value = UserDefaults.standard.value(forKey: key) as? NSData {
            return NSKeyedUnarchiver.unarchiveObject(with: value as Data)
        }
        return nil
    }
    
    
    class func convertNULLToString(object:AnyObject?) -> String
    {
        //        let obj:AnyObject = NSNull()
        guard let str = object as? String else {
            return ""
        }
        return str
    }
    
    class func showActivityIndicator(uiView: UIView)
    {
        container.frame = uiView.frame
        container.center = uiView.center
        //        container.backgroundColor = UIColor.
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = uiView.center
        loadingView.backgroundColor = UIColor.init(red: 68.0/255, green: 68.0/255, blue: 68.0/255, alpha: 0.7)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40.0, height: 40.0)
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2)
        
        loadingView.addSubview(activityIndicator)
        container.addSubview(loadingView)
        uiView.addSubview(container)
        activityIndicator.startAnimating()
    }
    
    class func hideActivityIndicator(uiView: UIView)
    {
        DispatchQueue.main.async {
            activityIndicator.stopAnimating()
            container.removeFromSuperview()
        }
        
    }
    
    
    class func saveImageToDocumentDirectory(image : UIImage?) -> NSString?{
        
        let fileManager = FileManager.default
        let imageNameStr : NSString = "iOS_img_\(NSDate().timeIntervalSince1970)".replacingOccurrences(of: ".", with: "") as NSString
        let imageID: String? = (imageNameStr as String)+".jpg"
        let paths = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageID!)
        print(paths)
        let imageData = image!.jpegData(compressionQuality: 0.7) //UIImageJPEGRepresentation(image!, 0.7)
        fileManager.createFile(atPath: paths as String, contents: imageData, attributes: nil)
        return AppUtility.getImage(imageName: imageID!)
    }
    class func removeImage(itemName:String) {
        let fileManager = FileManager.default
        let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let nsUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        let paths = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true)
        guard let dirPath = paths.first else {
            return
        }
        let filePath = "\(dirPath)/\(itemName)"
        do {
            try fileManager.removeItem(atPath: filePath)
        } catch let error as NSError {
            print(error.debugDescription)
        }
    }
    class func getImage(imageName : String) -> NSString?{
        let fileManager = FileManager.default
        let imagePath = (AppUtility.getDirectoryPath() as NSString).appendingPathComponent(imageName)
        if fileManager.fileExists(atPath: imagePath){
            return imagePath as NSString?
        }else{
            print("No Image")
            return imagePath as NSString?
        }
    }
    
    class func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    class func addReadMoreStringToUILabelWithText(_ text: String, descriptionLabel: UILabel) {
        descriptionLabel.layoutIfNeeded()
        let readMoreText = " ...read more"
        if text.count > 70 {
            let lengthForVisibleString =  70 // self.fitString(text, intoLabel: descriptionLabel)
            let mutableString = text
            if(mutableString.count > 0 && lengthForVisibleString > 0) {
                let trimmedString = (mutableString as NSString).replacingCharacters(in: NSMakeRange(lengthForVisibleString, (text.count - lengthForVisibleString)), with: "")
                let readMoreLength = readMoreText.count
                if(trimmedString.count > 0 && (trimmedString.count - readMoreLength) > 0){
                    var trimmedForReadMore = (trimmedString as NSString).replacingCharacters(in: NSMakeRange((trimmedString.count - readMoreLength), readMoreLength), with: "")
                    trimmedForReadMore = String(trimmedForReadMore.filter { !"\n".contains($0) })
                    
                    
                    let answerAttributed = NSMutableAttributedString(string: trimmedForReadMore, attributes: [NSAttributedString.Key.font: descriptionLabel.font])
                    
                    let readMoreAttributed = NSMutableAttributedString(string: readMoreText, attributes: [NSAttributedString.Key.font: Constant.FONT_REGULAR_12!, NSAttributedString.Key.foregroundColor: Constant.BUTTON_PINK_COLOR])
                    answerAttributed.append(readMoreAttributed)
                    descriptionLabel.attributedText = answerAttributed
                }
                
            }
        }
        else {
            descriptionLabel.text = text
        }
    }
    
    class func heightForText(_ text:String, font:UIFont, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }
    
    class func gettimeZoneFromIdentifier(identifier: String) -> String {
        let abbreviationDict = TimeZone.abbreviationDictionary
        var timeZone = ""
        for (key, value) in abbreviationDict {
            if value == identifier {
                timeZone = key
                break
            }
        }
        return timeZone
    }
    class func addToolBar(viewController:UIViewController, selectorMethod:Selector) -> UIToolbar {
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        toolBar.items = [
            UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: viewController, action:selectorMethod)]
        return toolBar
        
    }
    
    class func clearAccount() {
        UserDefaults.standard.synchronize()
        AppUtility.saveInUserDefaults(myKey: Constant.isLoggedInAlready, myValue: false)
//        AppUtility.saveInUserDefaults(myKey: Constant.userFirstName, myValue: "")
//        AppUtility.saveInUserDefaults(myKey: Constant.accessToken, myValue: "")
//        AppUtility.saveInUserDefaults(myKey: Constant.workerID, myValue: "")
//        AppUtility.saveInUserDefaults(myKey: Constant.companyName, myValue: "")
//        Constant.APP_DELEGATE.userData = nil
//        Constant.APP_DELEGATE.leaveTypesArray.removeAll()
        
    }
    
    class func showBottomSnackBarAlert(color : UIColor , message : NSString, viewController:UIViewController)
    {
        let fontColor : UIColor!
        if color == UIColor.red
        {
            fontColor = UIColor.white
        }
        else if color == UIColor.green
        {
            fontColor = UIColor.white
        }
        else if color == UIColor.yellow
        {
            fontColor = UIColor.black
        }
        else
        {
            fontColor = UIColor.black
        }
        
        let attributedString = NSAttributedString(string: "\(message)", attributes: [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17),
            NSAttributedString.Key.foregroundColor: fontColor
            ])
        
        DispatchQueue.main.async(execute: {() -> Void in
            let alert = UIAlertController(title: nil , message: "", preferredStyle: .actionSheet)
            alert.setValue(attributedString, forKey: "attributedMessage")
            
            
            for vi in  (((alert.view.subviews.first)?.subviews.first)?.subviews
                )!
            {
                vi.backgroundColor = color
                
            }
            
            viewController.present(alert, animated: true, completion:nil)
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                viewController.dismiss(animated: true, completion: nil)
            };
        })
    }
    
  class  func showBottomSnackBarAlertNew(title : NSString , message : NSString,viewController:UIViewController)
    {
        let attributedString = NSAttributedString(string: "\(message)", attributes: [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17),
            NSAttributedString.Key.foregroundColor: UIColor.white
            ])
        
        DispatchQueue.main.async(execute: {() -> Void in
            let alert = UIAlertController(title: nil , message: "", preferredStyle: .actionSheet)
            alert.setValue(attributedString, forKey: "attributedMessage")
            
            
            for vi in  (((alert.view.subviews.first)?.subviews.first)?.subviews
                )!
            {
                vi.backgroundColor = UIColor.red
                
            }
            
            viewController.present(alert, animated: true, completion: {
                print("completion block")
                
                
            })
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                
                viewController.dismiss(animated: true, completion: nil)
                
                
            };
        })
    }
    
    class func createTabbarController() {
        
        /*
        let vc1 : DashboardVC1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardVC1") as! DashboardVC1
        let nav1 = UINavigationController.init(rootViewController: vc1)
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home_grey"), selectedImage: UIImage(named: "home_blue"))
        
        
        let vc2 : NotificationViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        let nav2 = UINavigationController.init(rootViewController: vc2)
        nav2.tabBarItem = UITabBarItem(title: "Notification", image: UIImage(named: "notification_grey"), selectedImage: UIImage(named: "notification_blue"))
        
        
        let vc3 : TermsConditionsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TermsConditionsViewController") as! TermsConditionsViewController
        let nav3 = UINavigationController.init(rootViewController: vc3)
        nav3.tabBarItem = UITabBarItem(title: "Terms & Conditions", image: UIImage(named: "terms_grey"), selectedImage: UIImage(named: "terms_blue"))
        
        
        let vc4 : HelpSupportViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HelpSupportViewController") as! HelpSupportViewController
        let nav4 = UINavigationController.init(rootViewController: vc4)
        nav4.tabBarItem = UITabBarItem(title: "Help & Support", image: UIImage(named: "support_grey"), selectedImage: UIImage(named: "support_blue"))
        
        
        Constant.APP_DELEGATE.globalTabbarVC.viewControllers = [nav1, nav2,nav3,nav4]
        
        Constant.APP_DELEGATE.window?.rootViewController = Constant.APP_DELEGATE.globalTabbarVC
        */
    }
    // MARK: Remote notifications
    
    class func registerForRemoteNotification() {
        // Register for push in iOS 8
        if #available(iOS 8.0, *) {
            let settings = UIUserNotificationSettings(types: [UIUserNotificationType.alert, UIUserNotificationType.badge, UIUserNotificationType.sound], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
            UIApplication.shared.registerForRemoteNotifications()
        }
        else {
            // Register for push in iOS 7
            UIApplication.shared.registerForRemoteNotifications(matching: [UIRemoteNotificationType.badge, UIRemoteNotificationType.sound, UIRemoteNotificationType.alert])
        }
    }
}
