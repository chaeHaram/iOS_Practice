//
//  ViewController.swift
//  MemoTableViewPracticeAgain
//
//  Created by Chae_Haram on 2022/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var memoListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        memoListTableView.dataSource = self
        memoListTableView.delegate = self
        // tableView 필수 요소 두가지 없으면 화면에 보이질 않는다.
        // datasource - 데이터를 받아 화면에 표시해준다 -> 무엇을 어떻게 보여줄것인가?
        // delegate - 동작을 제시 -> 사용자가 보이는 것들 중 무언가에 대한 액션을 취한다면 그에 대한 동작 수행
        
    }
    override func viewWillAppear(_ animated: Bool) {
        memoListTableView.reloadData()
        // viewWillAppear - 뷰가 나타날거야 곧
        // reloadData() - tableView의 데이터를 다시 불러올거야
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Memo.memoList.count
        // numberOfRowsInSection - 하나의 section 안에 row의 수 결정하기
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let memoCell = tableView.dequeueReusableCell(withIdentifier: "memoTVC", for: indexPath) as? MemoTableViewCell else { return UITableViewCell() }
        let memo = Memo.memoList[indexPath.row]
        memoCell.memoTitleLabel.text = memo.memoTitle
        memoCell.memoDateLabel.text = DateFormatter.customDateFormatter.string(from: Date())
        
        return memoCell
        
        // cellForRowAt - tableView의 특정 위치에 삽입할 셀에 대한 데이터 소스를 요청합니다.
        // dequeueReusableCell - 지정된 재사용 식별자에 대해 재사용 가능한 tableView 셀 개체를 반환하고 테이블에 추가합니다.
        // as? MemoTableViewCell - MemoTableViewCell이란 이름을 가진 tableViewCell을 캐스팅해줌으로써 MemoTableViewCell에 outlet한 label등의 정보를 가져와 쓸 수 있다.
        // guard, else - 만약 MemoTableViewCell이란 이름을 가진 tableviewcell파일이 없을 수도 있으므로 guard를 사용해 optional 타입을 해결
        
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        // heightForRowAt - row의 높이를 정해준다.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let editMemoVC = self.storyboard?.instantiateViewController(withIdentifier: "editMemoVC") as? EditMemoUIViewController else { return }
        editMemoVC.editMemo = Memo.memoList[indexPath.row]
        editMemoVC.row = indexPath.row
        self.navigationController?.pushViewController(editMemoVC, animated: true)
        // didSelectRowAt - row를 눌렀을 때 어떤 일을 할것인지 작성
        // instantiateViewController - 지정된 식별자를 가지고 스토리보드의 데이터를 초기화 해 뷰 컨트롤러를 만든다
        // 데이터를 초기화하기 때문에 instantiateViewController를 사용하여 뷰 컨트롤러를 만들면 데이터는 초기화되고 새로운 인스턴스를 만든다.
        // 따라서 instantiateViewController는 새로운 viewController로 넘어갈때 사용해야한다.
        // self.navigationController.pushViewController - 네비게이션을 push로 보여준다. push<->pop, presentation<->dismiss
    }
}
