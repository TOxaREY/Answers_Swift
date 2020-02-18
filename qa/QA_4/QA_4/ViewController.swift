//
//  ViewController.swift
//  QA_4
//
//  Created by REYNIKOV ANTON on 18.02.2020.
//  Copyright © 2020 REYNIKOV ANTON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //У замыкания нельзя поставить метку with:
    var update: (Record) -> Void = { _ in }
    
    //Метка with: возможна только если update функция
//    func update(with: Record) -> Void {
//
//    }
    var id = 10
    
    func retrieveData(for id: Int, completion: @escaping (Record) -> ()) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrieveData(for: id) {
            self.update($0)
//            self.update(with: $0)
        }
        
        retrieveData(for: id, completion: {
            self.update($0)
//            self.update(with: $0)
        })
    }
}




/*
 ○ Замыкание (closure) содержит сильную (strong) ссылку на себя (self) во втором случае и неизвестную (unowned) ссылку в первом случае.

 ○ Замыкание содержит сильную ссылку на себя в первом случае и неизвестную ссылку во втором случае.

 ○ Первый случай ожидает, пока retrieveData завершит обработку в фоновом режиме (background), а затем запускает замыкание. Второй случай запускает замыкание немедленно.

 ● Нет никакой разницы. Два вызова идентичны.
 */
