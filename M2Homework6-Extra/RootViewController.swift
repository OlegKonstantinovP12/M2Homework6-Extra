//
//  ViewController.swift
//  M2Homework6-Extra
//
//  Created by Oleg Konstantinov on 15.11.2025.
//

import UIKit

class RootViewController: UIViewController {
    
    private var tableSection = TableSection.mockData()
    
    private lazy var tableView: UITableView = {
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        $0.dataSource = self
        $0.delegate = self
        $0.rowHeight = 60
        return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
}

//MARK: - UITableViewDataSource
extension RootViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        tableSection.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableSection[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let content = tableSection[indexPath.section].items
        var config = cell.defaultContentConfiguration()
        
        config.text = content[indexPath.row].title
        config.secondaryText = content[indexPath.row].originalTitle
        config.image = UIImage(named: content[indexPath.row].posterPath)
        
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        tableSection[section].header
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        tableSection[section].footer
    }
}

//MARK: - UITableViewDelegate
extension RootViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let itemType = tableSection[indexPath.section].type

        switch itemType {
        case .details:
            let vc = DetailsViewController()
            vc.item = tableSection[indexPath.section].items[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        case .upcoming:
            let vc = UpcomingViewController()
            vc.item = tableSection[indexPath.section].items[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableSection[indexPath.section].items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
