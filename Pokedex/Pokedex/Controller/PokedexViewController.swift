//
//  PokedexViewController.swift
//  Pokedex
//
//  Created by Demario Asquitt on 7/22/20.
//  Copyright © 2020 Demario Asquitt. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
              
              print("POKEMON DATA: \(dataDictionary)")

              // TODO: Get the array of pokemon
              // TODO: Store the pokemon in a property to use elsewhere
              // TODO: Reload your table view data

           }
        }
        task.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
