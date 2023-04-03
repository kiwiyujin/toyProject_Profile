import UIKit

class ProfileViewController: UIViewController {
    // - MARK: 변수 선언
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hobby: UILabel!
    @IBOutlet weak var MBTI: UILabel!
    @IBOutlet weak var detailButton: UIButton!
    
    // - MARK: view life-cycle
    override func viewDidLoad() {
        setupView()
        setupImage()
        setupLabel()
        print("Yujin")
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        <#code#>
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        <#code#>
//    }
    
    // MARK: 세부 함수 선언
    func setupView() {
        view.backgroundColor = .systemGreen
    }

    func setupImage() {
        image.layer.cornerRadius = 100.0
    }
    
    func setupLabel() {
        name.backgroundColor = .systemGray5
        name.clipsToBounds = true
        name.layer.cornerRadius = 5.0
        
        hobby.backgroundColor = .systemGray5
        hobby.clipsToBounds = true
        hobby.layer.cornerRadius = 5.0
        
        MBTI.backgroundColor = .systemGray5
        MBTI.clipsToBounds = true
        MBTI.layer.cornerRadius = 5.0
     
    }
    
    @IBAction func detailActionButton(_ sender: Any) {
        // detailVC 를 storyboard로 부터 ID를 통해 불러옴
        guard let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") else { return }
        
        // navigationController에 detailVC를 push하는 과정
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

