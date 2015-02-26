//
//  ViewController.swift
//  TestApp
//
//  Created by Ray Lin on 12/21/14.
//  Copyright (c) 2014 Ray Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var data = [("Abilene" , "http://abilene.craigslist.org/"), ("Akroncanton" , "http://akroncanton.craigslist.org/"), ("Albany" , "http://albany.craigslist.org/"), ("Albanyga" , "http://albanyga.craigslist.org/"), ("Albuquerque" , "http://albuquerque.craigslist.org/"), ("Allentown" , "http://allentown.craigslist.org/"), ("Altoona" , "http://altoona.craigslist.org/"), ("Amarillo" , "http://amarillo.craigslist.org/"), ("Ames" , "http://ames.craigslist.org/"), ("Anchorage" , "http://anchorage.craigslist.org/"), ("Annapolis" , "http://annapolis.craigslist.org/"), ("Annarbor" , "http://annarbor.craigslist.org/"), ("Appleton" , "http://appleton.craigslist.org/"), ("Asheville" , "http://asheville.craigslist.org/"), ("Ashtabula" , "http://ashtabula.craigslist.org/"), ("Athensga" , "http://athensga.craigslist.org/"), ("Athensohio" , "http://athensohio.craigslist.org/"), ("Atlanta" , "http://atlanta.craigslist.org/"), ("Auburn" , "http://auburn.craigslist.org/"), ("Augusta" , "http://augusta.craigslist.org/"), ("Austin" , "http://austin.craigslist.org/"), ("Bakersfield" , "http://bakersfield.craigslist.org/"), ("Baltimore" , "http://baltimore.craigslist.org/"), ("Batonrouge" , "http://batonrouge.craigslist.org/"), ("Battlecreek" , "http://battlecreek.craigslist.org/"), ("Beaumont" , "http://beaumont.craigslist.org/"), ("Bellingham" , "http://bellingham.craigslist.org/"), ("Bemidji" , "http://bemidji.craigslist.org/"), ("Bend" , "http://bend.craigslist.org/"), ("Bgky" , "http://bgky.craigslist.org/"), ("Bham" , "http://bham.craigslist.org/"), ("Bigbend" , "http://bigbend.craigslist.org/"), ("Billings" , "http://billings.craigslist.org/"), ("Binghamton" , "http://binghamton.craigslist.org/"), ("Bismarck" , "http://bismarck.craigslist.org/"), ("Blacksburg" , "http://blacksburg.craigslist.org/"), ("Bloomington" , "http://bloomington.craigslist.org/"), ("Bn" , "http://bn.craigslist.org/"), ("Boise" , "http://boise.craigslist.org/"), ("Boone" , "http://boone.craigslist.org/"), ("Boston" , "http://boston.craigslist.org/"), ("Boulder" , "http://boulder.craigslist.org/"), ("Bozeman" , "http://bozeman.craigslist.org/"), ("Brainerd" , "http://brainerd.craigslist.org/"), ("Brownsville" , "http://brownsville.craigslist.org/"), ("Brunswick" , "http://brunswick.craigslist.org/"), ("Buffalo" , "http://buffalo.craigslist.org/"), ("Burlington" , "http://burlington.craigslist.org/"), ("Butte" , "http://butte.craigslist.org/"), ("Capecod" , "http://capecod.craigslist.org/"), ("Carbondale" , "http://carbondale.craigslist.org/"), ("Catskills" , "http://catskills.craigslist.org/"), ("Cedarrapids" , "http://cedarrapids.craigslist.org/"), ("Cenla" , "http://cenla.craigslist.org/"), ("Centralmich" , "http://centralmich.craigslist.org/"), ("Cfl" , "http://cfl.craigslist.org/"), ("Chambana" , "http://chambana.craigslist.org/"), ("Chambersburg" , "http://chambersburg.craigslist.org/"), ("Charleston" , "http://charleston.craigslist.org/"), ("Charlestonwv" , "http://charlestonwv.craigslist.org/"), ("Charlotte" , "http://charlotte.craigslist.org/"), ("Charlottesville" , "http://charlottesville.craigslist.org/"), ("Chattanooga" , "http://chattanooga.craigslist.org/"), ("Chautauqua" , "http://chautauqua.craigslist.org/"), ("Chicago" , "http://chicago.craigslist.org/"), ("Chico" , "http://chico.craigslist.org/"), ("Chillicothe" , "http://chillicothe.craigslist.org/"), ("Cincinnati" , "http://cincinnati.craigslist.org/"), ("Clarksville" , "http://clarksville.craigslist.org/"), ("Cleveland" , "http://cleveland.craigslist.org/"), ("Clovis" , "http://clovis.craigslist.org/"), ("Cnj" , "http://cnj.craigslist.org/"), ("Collegestation" , "http://collegestation.craigslist.org/"), ("Columbia" , "http://columbia.craigslist.org/"), ("Columbiamo" , "http://columbiamo.craigslist.org/"), ("Columbus" , "http://columbus.craigslist.org/"), ("Columbusga" , "http://columbusga.craigslist.org/"), ("Cookeville" , "http://cookeville.craigslist.org/"), ("Corpuschristi" , "http://corpuschristi.craigslist.org/"), ("Corvallis" , "http://corvallis.craigslist.org/"), ("Cosprings" , "http://cosprings.craigslist.org/"), ("Csd" , "http://csd.craigslist.org/"), ("Dallas" , "http://dallas.craigslist.org/"), ("Danville" , "http://danville.craigslist.org/"), ("Dayton" , "http://dayton.craigslist.org/"), ("Daytona" , "http://daytona.craigslist.org/"), ("Decatur" , "http://decatur.craigslist.org/"), ("Delaware" , "http://delaware.craigslist.org/"), ("Delrio" , "http://delrio.craigslist.org/"), ("Denver" , "http://denver.craigslist.org/"), ("Desmoines" , "http://desmoines.craigslist.org/"), ("Detroit" , "http://detroit.craigslist.org/"), ("Dothan" , "http://dothan.craigslist.org/"), ("Dubuque" , "http://dubuque.craigslist.org/"), ("Duluth" , "http://duluth.craigslist.org/"), ("Eastco" , "http://eastco.craigslist.org/"), ("Easternshore" , "http://easternshore.craigslist.org/"), ("Eastidaho" , "http://eastidaho.craigslist.org/"), ("Eastky" , "http://eastky.craigslist.org/"), ("Eastnc" , "http://eastnc.craigslist.org/"), ("Eastoregon" , "http://eastoregon.craigslist.org/"), ("Easttexas" , "http://easttexas.craigslist.org/"), ("Eauclaire" , "http://eauclaire.craigslist.org/"), ("Elko" , "http://elko.craigslist.org/"), ("Elmira" , "http://elmira.craigslist.org/"), ("Elpaso" , "http://elpaso.craigslist.org/"), ("Enid" , "http://enid.craigslist.org/"), ("Erie" , "http://erie.craigslist.org/"), ("Eugene" , "http://eugene.craigslist.org/"), ("Evansville" , "http://evansville.craigslist.org/"), ("Fairbanks" , "http://fairbanks.craigslist.org/"), ("Fargo" , "http://fargo.craigslist.org/"), ("Farmington" , "http://farmington.craigslist.org/"), ("Fayar" , "http://fayar.craigslist.org/"), ("Fayetteville" , "http://fayetteville.craigslist.org/"), ("Fingerlakes" , "http://fingerlakes.craigslist.org/"), ("Flagstaff" , "http://flagstaff.craigslist.org/"), ("Flint" , "http://flint.craigslist.org/"), ("Florencesc" , "http://florencesc.craigslist.org/"), ("Fortcollins" , "http://fortcollins.craigslist.org/"), ("Fortdodge" , "http://fortdodge.craigslist.org/"), ("Fortmyers" , "http://fortmyers.craigslist.org/"), ("Fortsmith" , "http://fortsmith.craigslist.org/"), ("Fortwayne" , "http://fortwayne.craigslist.org/"), ("Frederick" , "http://frederick.craigslist.org/"), ("Fredericksburg" , "http://fredericksburg.craigslist.org/"), ("Fresno" , "http://fresno.craigslist.org/"), ("Gadsden" , "http://gadsden.craigslist.org/"), ("Gainesville" , "http://gainesville.craigslist.org/"), ("Galveston" , "http://galveston.craigslist.org/"), ("Glensfalls" , "http://glensfalls.craigslist.org/"), ("Goldcountry" , "http://goldcountry.craigslist.org/"), ("Grandforks" , "http://grandforks.craigslist.org/"), ("Grandisland" , "http://grandisland.craigslist.org/"), ("Grandrapids" , "http://grandrapids.craigslist.org/"), ("Greatfalls" , "http://greatfalls.craigslist.org/"), ("Greenbay" , "http://greenbay.craigslist.org/"), ("Greensboro" , "http://greensboro.craigslist.org/"), ("Greenville" , "http://greenville.craigslist.org/"), ("Gulfport" , "http://gulfport.craigslist.org/"), ("Hanford" , "http://hanford.craigslist.org/"), ("Harrisburg" , "http://harrisburg.craigslist.org/"), ("Harrisonburg" , "http://harrisonburg.craigslist.org/"), ("Hartford" , "http://hartford.craigslist.org/"), ("Hattiesburg" , "http://hattiesburg.craigslist.org/"), ("Helena" , "http://helena.craigslist.org/")]
    
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    func getLetterArray(data: [(String, String)]) -> [String] {
        //array has to already be in abc order
        
        var letterArray: [String] = ["A"]
        
        for (c,a) in data {
            if c.substringToIndex(advance(c.startIndex, 1)) != letterArray.last{
                letterArray.append(c.substringToIndex(advance(c.startIndex, 1)))
            }
            
        }
        return letterArray
    }
    
    func countLettersInSection(data: [(String, String)], section: Int) -> Int {
        var letterArray = getLetterArray(data)
        var theLetter = letterArray[section]
        
        var rowCount = 0
        
        for (c,a) in data {
            if c.substringToIndex(advance(c.startIndex, 1)) == theLetter{
                rowCount++
            }
        }
        return rowCount
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countLettersInSection(data, section: section)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        var letterArray = getLetterArray(data)
        return letterArray.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var letterArray = getLetterArray(data)
        return letterArray[section]
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        var realIndex: Int = 0
        var cityAddress: (String, String)
        
        if indexPath.section == 0
        {
            cityAddress = data[indexPath.row]
        }
        else
        {
            for eachSection in 0..<indexPath.section
            {
                realIndex += countLettersInSection(data, section: eachSection)
            }
            cityAddress = data[realIndex+indexPath.row]
            
        }
        
        cell.textLabel?.text = cityAddress.0
        cell.textLabel?.textColor = UIColor.blueColor()
        cell.detailTextLabel?.text = cityAddress.1
        
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        var destinationController = segue.destinationViewController as DetailViewController
        var currentIndexPath = self.table.indexPathForSelectedRow()
        if currentIndexPath!.section == 0
        {
            destinationController.datum = self.data[currentIndexPath!.row]
        }
        else
        {
            var realIndex = 0
            for eachSection in 0..<currentIndexPath!.section
            {
                realIndex += countLettersInSection(data, section: eachSection)
            }
            destinationController.datum = self.data[currentIndexPath!.row+realIndex]
        }
        
        
    }
    

}

