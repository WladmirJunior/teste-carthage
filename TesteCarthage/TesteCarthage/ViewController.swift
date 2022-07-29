//
//  ViewController.swift
//  TesteCarthage
//
//  Created by Wladmir Silva on 29/07/22.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let publish = PublishSubject<String>()
        
        publish
            .asObserver()
            .subscribe { element in
                print(element)
            }.disposed(by: disposeBag)
        
        publish.onNext("Starting...")
            
    }


}

