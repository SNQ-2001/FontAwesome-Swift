//
//  ViewController.swift
//  FontAwesome-UIKit
//
//  Created by MIYAMOTO TAISHIN on 2022/07/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "FontAwesomeTableViewCell", bundle: nil), forCellReuseIdentifier: "FontAwesomeTableViewCell")

        navigationItem.title = "Font Awesome"

        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 675
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FontAwesomeTableViewCell") as? FontAwesomeTableViewCell {
            cell.setCell(name: icons.name[indexPath.row], unicode: icons.unicode[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
