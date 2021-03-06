
import UIKit

class HomePage: UIViewController {

    var WeatherArray = [WeatherDetails]()
    
    
    private let mylabel:UILabel = {
        let label = UILabel()
        label.text = "Search For City"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let Searchbar =  UISearchBar()
    
    private let view1:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.backgroundColor = .gray
        view.layer.opacity = 0.6
        return view
    }()
    private let view2:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.backgroundColor = .gray
        view.layer.opacity = 0.8
        return view
    }()
    private let view3:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.backgroundColor = .gray
        view.layer.opacity = 0.8
        return view
    }()
    private let view4:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.backgroundColor = .gray
        view.layer.opacity = 0.8
        return view
    }()
    private let view5:UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.backgroundColor = .gray
        view.layer.opacity = 0.8
        return view
    }()
    private let location:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let timezone:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let timezone_id:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let wind:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  25)
        label.textAlignment = .center
        return label
    }()
    private let wind_mph:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let wind_kmh:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
   
    private let temp:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  25)
        label.textAlignment = .left
        return label
    }()
    private let temp_c:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let temp_f:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
   
    private let pre:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  25)
        label.textAlignment = .left
        return label
    }()
    private let pre_mb:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    private let pre_in:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
   
    private let hum:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  25)
        label.textAlignment = .left
        return label
    }()
    private let hum_pre:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
       // view.addSubview(myimg)
        view.addSubview(mylabel)
        view.addSubview(Searchbar)
        Searchbar.layer.cornerRadius = 20
        Searchbar.delegate = self as! UISearchBarDelegate
        
        
        view.addSubview(view1)
        view.addSubview(location)
        view.addSubview(timezone)
        view.addSubview(timezone_id)
        view.addSubview(view2)
        view.addSubview(wind)
        view.addSubview(wind_mph)
        view.addSubview(wind_kmh)
    
        view.addSubview(view3)
        view.addSubview(temp)
        view.addSubview(temp_c)
        view.addSubview(temp_f)
     
        view.addSubview(view4)
        view.addSubview(pre)
        view.addSubview(pre_mb)
        view.addSubview(pre_in)
      
        view.addSubview(view5)
        view.addSubview(hum)
        view.addSubview(hum_pre)
     
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
        mylabel.frame = CGRect(x: 10, y: 30, width: 200, height: 30)
        Searchbar.frame = CGRect(x: 20 , y: mylabel.bottom + 10 , width: view.width - 40 , height: 40)
        view1.frame = CGRect(x: 20, y: Searchbar.bottom + 30, width: view.width - 40, height: 100)
        location.frame = CGRect(x: view1.left + 20, y: view1.top + 20, width:  130, height: 30)
        timezone.frame = CGRect(x: location.right + 10, y: view1.top + 20, width: 180, height: 30)
        timezone_id.frame = CGRect(x: view1.left + 20 , y: location.bottom + 10, width: 180, height: 30)
        view2.frame = CGRect(x: 20, y: view1.bottom + 20, width: 150, height: 150)
        wind.frame = CGRect(x: view2.left, y: view2.top + 20, width:  view2.right - 20, height: 25)
        wind_mph.frame = CGRect(x: view2.left + 20, y: wind.bottom + 10, width:  view2.right - 20, height: 20)
        wind_kmh.frame = CGRect(x: view2.left + 20, y: wind_mph.bottom + 10, width:  view2.right - 20, height: 20)
       
        view3.frame = CGRect(x: view2.right + 30, y: view1.bottom + 20, width: 150, height: 150)
        temp.frame = CGRect(x: view3.left, y: view3.top + 20, width:  view3.right, height: 25)
        temp_c.frame = CGRect(x: view3.left + 20, y: temp.bottom + 10, width:  view3.right - 20, height: 20)
        temp_f.frame = CGRect(x: view3.left + 20, y: temp_c.bottom + 10, width:  view3.right - 20, height: 20)
        view4.frame = CGRect(x: 20, y: view2.bottom + 20, width: 150, height: 150)
        pre.frame = CGRect(x: view4.left + 20, y: view4.top + 20, width:  view4.right, height: 25)
        pre_mb.frame = CGRect(x: view4.left + 20, y: pre.bottom + 10, width:  view4.right - 20, height: 20)
        pre_in.frame = CGRect(x: view4.left + 20, y: pre_mb.bottom + 10, width:  view4.right - 20, height: 20)
      
        view5.frame = CGRect(x: view4.right + 30, y: view3.bottom + 20, width: 150, height: 150)
        hum.frame = CGRect(x: view5.left + 20, y: view5.top + 20, width:  view5.right, height: 25)
        hum_pre.frame = CGRect(x: view5.left + 20, y: pre.bottom + 10, width:  view5.right - 20, height: 20)
           }

    func assignbackground(){
        let background = UIImage(named: "bg1")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    func show(name:String){
        WeatherArray = APIHandler.shared.search_weather(with: name)
        for  i in WeatherArray {
            location.text = "\(i.location.name),\(i.location.country) "
            timezone.text = "\(i.location.localtime)"
            timezone_id.text  = "\(i.location.tz_id)"
            
            wind.text = "Wind"
            wind_mph.text = "\(i.current.wind_mph) Mp/h"
            wind_kmh.text = "\(i.current.wind_kph) Km/h"
            
            
            temp.text = "Temperature"
            temp_c.text = "\(i.current.temp_c) C"
            temp_f.text = "\(i.current.temp_f) F"
           
            
            pre.text = "Pressure"
            pre_mb.text = "\(i.current.pressure_mb) mb"
            pre_in.text = "\(i.current.pressure_in) in"
           
            hum.text = "Humidity"
            hum_pre.text = "\(i.current.humidity) %"
         
        }
    }
    
}
extension HomePage :UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
        view1.isHidden = false
        view2.isHidden = false
        view3.isHidden = false
        view4.isHidden = false
        view5.isHidden = false
        show(name:searchBar.text! )
        
    }
    
}
