import UIKit
import PlaygroundSupport

class MyTableViewDelegate: NSObject, UITableViewDelegate {
    // Assume a reasonable implementation of the delegate methods
}

class MyTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = MyTableViewDelegate()
        //Instance will be immediately
        //deallocated because property 'delegate' is 'weak'
/*
Экземпляр будет немедленно освобожден, потому что свойство «делегат» является «слабым»
Делегат должен принять протокол UITableViewDelegate. Делегат не сохраняется.
Этот контроллер представления сам предоставит методы делегата
и данные строки для табличного представления.
tableView.delegate = self
*/
        tableView.reloadData()
    }
}


/*
 ● UITableView.delegate - слабое (weak) свойство. Ничто не сохраняет MyTableViewDelegate, поэтому он будет немедленно освобожден, а для делегата будет установлено значение nil.

 ○ Ко времени выполнения viewDidLoad() делегат табличного представления уже установлен. Изменение его на этом этапе - неопределенное поведение. Это может привести к сбою или непредсказуемым результатам.

 ○ UITableViewDelegate должен быть UITableViewController. MyTableViewDelegate наследуется от NSObject.

 ○ UITableView.delegate не может реализовать протокол UITableViewDataSource.
 */
