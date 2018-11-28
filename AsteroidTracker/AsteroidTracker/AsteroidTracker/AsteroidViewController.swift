//
//  AsteroidViewController.swift
//  AsteroidTracker
//
//  Created by Kelly Bauman on 11/5/18.
//  Copyright © 2018 Kelly Bauman. All rights reserved.
//

import UIKit

class AsteroidViewController: UIViewController, UITableViewDelegate {
    
    weak var delegate: ViewController!
    var asteroidResults: [Asteroid] = []
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        retrieveAsteroids()

        // Do any additional setup after loading the view.
    }
    
//    private func tableView(_ tableView: UITableView, heightForRowAt section: Int) -> CGFloat {
//        return 150
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // grouped vertical sections of the tableview
        return 1
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 0.1
//    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // at init/appear ... this runs for each visible cell that needs to render
        let asteroidcell = tableView.dequeueReusableCell(withIdentifier: "tableviewcell", for: indexPath) as! TableViewCell
    
        return asteroidcell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func retrieveAsteroids() {
        let url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-20&end_date=2015-09-13&api_key=DEMO_KEY"
        HTTPHandler.getJson(urlString: url, completionHandler: parseDataIntoAsteroids)
    }
 
    func parseDataIntoAsteroids(data: Data?) -> Void {
        if let data = data {
            let object = JSONParser.parse(data: data)
            if let object = object {
                self.asteroidResults = AsteroidDataProcessor.mapJsonToAsteroids(object: object, asteroidKey: "near_earth_objects")
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
}
