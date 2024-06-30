//
//  ColorsTableVC.swift
//  colors-app
//
//  Created by Abir Dey on 30/06/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toDetails = "ToColorDetailsVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initRandomColors()
        // Do any additional setup after loading the view.
    }
    func initRandomColors(){
        for _ in 0..<50{
            colors.append(UIColor.random())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailsVC
        destVC.color = sender as? UIColor
    }
}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetails, sender: color)
    }
}
