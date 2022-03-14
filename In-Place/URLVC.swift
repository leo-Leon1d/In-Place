//
//  File.swift
//  In-Place
//
//  Created by Леонид Исраелян on 04.03.2022.
//

import UIKit

class URLViewController: UIViewController {
    
    @IBOutlet weak var imageFromNetwork: UIImageView!
    
    var model: [Places] = []
    
    let stringUrl = "https://gist.githubusercontent.com/alex-zykov/1d649549408ad875250d2789ca72e937/raw/c3a8437e47f0d8ba365ef426a0fa7502cd873248/posts.json"
    
    func getPlaces() {
        
        guard let url = URL(string: stringUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self]
            data, response, error in
            
            guard let this = self else { return }
            
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let keys = try JSONDecoder().decode([Places].self, from: data)
                print(keys[0])
                
                this.model = keys
                
                DispatchQueue.main.async {
//                    this.tableView.reloadData()
                }
                
            }
            
            catch {
                print(error)
                
                
                
            }
            
        }
        
        .resume()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    
    
}
