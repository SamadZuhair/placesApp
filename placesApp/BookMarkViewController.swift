//
//  BookMarkViewController.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/8/22.
//

import UIKit

class BookMarkViewController: UIViewController {
    @IBOutlet weak var BookMarksTB: UITableView!
    var locationa = ["iQ", "RU" , "SU" , "IN"]
    override func viewDidLoad() {
        super.viewDidLoad()
        BookMarksTB.delegate = self
        BookMarksTB.dataSource = self
        // Do any additional setup after loading the view.
        BookMarksTB.register(UINib(nibName:"PlacesCiel" , bundle: nil), forCellReuseIdentifier: "PlacesCiel")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(Places.shared.landmarks)
    }
    
    
}

extension BookMarkViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ceil = BookMarksTB.dequeueReusableCell(withIdentifier: "PlacesCiel", for: indexPath) as! PlacesCiel
        ceil.Name.text = "Iraq"
        ceil.Time.text = "12/Nov"
        ceil.discripton.text = "In baghdad"
        return ceil
    }
    
    
}
