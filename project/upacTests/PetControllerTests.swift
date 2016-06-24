//
//  PetControllerTests.swift
//  upac
//
//  Created by Daniel Carlos on 5/31/16.
//  Copyright © 2016 CocoaStudies. All rights reserved.
//

import XCTest
@testable import upac

class PetControllerTests: XCTestCase {
    
    struct FakePetAPI : PetAPI{
        
        func getAll(_ callBack: (pets: [Pet]) -> Void) {
            let mockedData = [Pet(name: "Michel" , breed: "Husk"   , age: .baby  , gender: .male  , size: .small),
                              Pet(name: "Marcele", breed: "Bulldog", age: .young , gender: .female, size: .large),
                              Pet(name: "Merlin" , breed: "Terrier", age: .senior, gender: .male  , size: .medium)]
            callBack(pets:mockedData)
        }

    }
    
    var storyboard : UIStoryboard!
    var petController : PetViewController!

    override func setUp() {
        super.setUp()
        
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        petController = storyboard.instantiateInitialViewController() as! PetViewController
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNumberOfRows_WithArray_ShouldReturnArraySize(){
        petController.petAPI = FakePetAPI()
      
        petController.viewDidLoad()
        
        let tableView = petController.tableView
        let numberOfRowsInSection = petController.tableView(tableView, numberOfRowsInSection: 0)
        XCTAssertEqual(numberOfRowsInSection, 3)
    }
    
    func testCellAtIndex_InRow_ShouldHaveCorrectUI(){
        petController.petAPI = FakePetAPI()
        
        petController.viewDidLoad()
        
        let tableView = petController.tableView
        let cell = petController.tableView(tableView, cellForRowAtIndexPath: IndexPath(forRow: 2, inSection: 0)) as! PetCell
        XCTAssertEqual(cell.name.text, "Merlin")
        XCTAssertEqual(cell.size.text, "Porte Médio")
        
    }
    
    func testViewDidLoad_AfterCalled_ShouldHookOutlets(){
        petController.viewDidLoad()
        
        XCTAssertNotNil(petController.tableView)
    }

}
