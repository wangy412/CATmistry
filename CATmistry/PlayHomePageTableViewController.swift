//
//  PlayHomePageTableViewController.swift
//  CATmistry
//
//  Created by N HJ on 27/11/20.
//

import UIKit

var gameTopics = [
    PlayTopic(title: "Diffusion", pic: "gas-tests.png", pointsNeeded: 10, segDesti: "diff", errorLabel: "Please complete Chapter 1"),
    PlayTopic(title: "Retreive the solids", pic: "separation-methods.png", pointsNeeded: 20, segDesti: "sepe", errorLabel: "Please complete Chapter 2"),
    PlayTopic(title: "Get the PH Right", pic: "pH-and-indicators.png", pointsNeeded: 30, segDesti: "phAndIndi", errorLabel: "Please complete Chapter 3"),
    PlayTopic(title: "Identify the elements", pic: "periodic-table.png", pointsNeeded: 40, segDesti: "periodic", errorLabel: "Please complete Chapter 4")
]

class PlayHomePageTableViewController: UITableViewController{
    
    @IBOutlet var playPageTable: UITableView!
    // HELLO HAO JUN PLS READ THIS UH TRY TO MAKE THE SEGUE WORK THANKS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

        let navbar = UINavigationBarAppearance()
        navbar.backgroundColor = UIColor(red: 104/255, green: 198/255, blue: 242/255, alpha: 1)
        self.navigationController?.navigationBar.scrollEdgeAppearance = navbar

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gameTopics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playChapterCell", for: indexPath)
        let currentTopic = learnTopics[indexPath.row]
        
        if let cell = cell as? PlayHomePageTableViewCell{
            if (points < currentTopic.pointsNeeded){
                cell.playChapterLabel.isEnabled = false
                cell.selectionStyle = .none
                cell.playChapterImageView?.image = UIImage(named: "lock.png")
            } else {
                cell.playChapterImageView?.image = UIImage(named: currentTopic.pic)
            }
            cell.playChapterLabel.text = currentTopic.title
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80.0
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        performSegue(withIdentifier: gameTopics[indexPath.row].segDesti, sender: nil)
    }

}
