import UIKit

var str = "Hello, playground"


protocol FirstVCDelegate {
    func passData(data: String)
}


class FirstVC {
    var delegate: FirstVCDelegate?
}


class SecondVC: FirstVCDelegate {
    func passData(data: String) {
        print("Something happened")
    }
}


let firstVC = FirstVC()
let secondVC = SecondVC()



firstVC.delegate = secondVC  // secondVC = delegate


firstVC.delegate?.passData(data: "a bunch of contracts")

