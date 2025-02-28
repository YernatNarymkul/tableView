//
//  TableViewController.swift
//  tableViewHomeWork
//
//  Created by Ернат on 28.02.2025.
//

import UIKit

class TableViewController: UITableViewController {
    // MARK: - Массив
    // Миссив для ввода данных который состоит из структуры Person
    var arrayPerson = [Person(name: "Высокогорный спорткомплекс «Медео»", discription: "Медеу — поддержка; опора) — высокогорный спортивный комплекс, расположенный в высокогорном урочище Медеу на высоте 1691 метр над уровнем моря, вблизи казахстанского города Алма-Аты. Медео — крупнейший в мире высокогорный комплекс для зимних видов спорта с самой большой площадью искусственного ледового поля — 10,5 тыс.", imageView: "medeo"),
                       Person (name: "Вознесенский Кафедральный собор", discription: "Самый высокий православный деревянный храм в мире. Высота креста на главном куполе - 39,6 м, а высота колокольни - 46 м. Собор вмещает 1800 человек. Колоритное здание царской эпохи - уникальный памятник деревянного зодчества в стиле украинского барокко, впечатляет своими пятью яркими куполами.", imageView: "church"),
                       Person (name: "Парк Кок Тобе", discription: "Алматы – бывшая столица Казахстана и крупнейший город страны почти с 2-миллионным населением. Алматы является финансовым, научным, культурным, экономическим, историческим и производственным центром Казахстана. Алматы расположен на юго-востоке Казахстана, у подножия Заилийского Алатау.", imageView: "koktobe"),
                       Person (name: "Республиканский музей казахских народных музыкальных инструментов", discription: "Республиканский музей казахских народных музыкальных инструментов Казахской ССР» был организован в 1980 году Постановлением Совета Министров Казахской ССР от 1 августа 1980 года. Открытие музея состоялось 24 апреля 1981 года. В фондах нового музея насчитывалось свыше 400 единиц хранения и свыше 40 типов и разновидностей казахских народных музыкальных инструментов.", imageView: "museum"),
                       Person (name: "Чары́нский каньо́н", discription: "Чары́нский каньо́н (каз. Шарын шатқалы) — протянувшийся на 154 км каньон вдоль реки Чарын в Казахстане. Каньон располагается в 195 км восточнее города Алматы. Расположен на территории трех районов Алматинской области: Уйгурского, Райымбекского, Енбекшиказахского. Каньон входит в территорию Чарынского национального парка, образованного 23 февраля 2004 года.", imageView: "canyen")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
//  MARK: - Загатовленная функция для создание секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
//  MARK: - Загатовленная функция для отоброжения массива данных
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPerson.count
    }

    //  MARK: - Загатовленная функция для отоброжения данных лейбла и картинки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let nameLabel = cell.viewWithTag(1001) as! UILabel
        nameLabel.text = arrayPerson[indexPath.row].name
        
//        let discriptionLabel = cell.viewWithTag(1002) as! UILabel
//        discriptionLabel.text = arrayPerson[indexPath.row].discription
        
        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: arrayPerson[indexPath.row].imageView)

        // Configure the cell...

        return cell
    }
    //  MARK: - Загатовленная функция для фиксации величины ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //  MARK: - Загатовленная функция для перехода экрана на другой экран
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.person = arrayPerson[indexPath.row]
        
        navigationController?.show(vc, sender: self)
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

}
