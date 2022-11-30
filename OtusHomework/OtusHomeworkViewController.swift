//
//  OtusHomeworkViewController.swift
//  OtusHomework
//
//  Created by Гладковский Николай Сергеевич on 28.11.2022.
//

import Foundation
import UIKit
import SnapKit

public protocol HasOtusHomeworkView: AnyObject {
    var squareView: UIView? { get }
    var squareViewController: UIViewController? { get }
}

public extension HasOtusHomeworkView {
    var squareView: UIView? {
        OtusHomeworkViewController().view
    }
    
    var squareViewController: UIViewController? {
        OtusHomeworkViewController()
    }
}

public class OtusHomeworkViewController: UIViewController, HasOtusHomeworkView {
    public var squareView: UIView {
        return view
    }
    
    public override func viewDidLoad() {
        view.backgroundColor = .orange
        let studentLabel = UILabel()
        studentLabel.font = .systemFont(ofSize: 48, weight: .ultraLight)
        studentLabel.text = "ФИО Студента"
        studentLabel.textColor = .gray
        studentLabel.textAlignment = .center
        studentLabel.numberOfLines = 0
        view.addSubview(studentLabel)
        
        studentLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
