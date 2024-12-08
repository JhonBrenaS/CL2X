//
//  ViewController.swift
//  CL2_Miguel
//
//  Created by Whiz on 7/12/24.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var tvDelitos: UITableView!
    
    var lista: [DelitosEntity]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        tvDelitos.dataSource = self
        tvDelitos.rowHeight = 400
        lista = NavegadorControlador().findAll()
        tvDelitos.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //objeto de la clase ItemTableViewCell
        let row=tvDelitos.dequeueReusableCell(withIdentifier: "celda") as! ItemTableViewCell
                //acceder a los labels
        row.lblDelito.text=lista[indexPath.row].delito
        row.lblDescripcion.text=lista[indexPath.row].descripcion
        row.lblCiudad.text=lista[indexPath.row].ciudad
        row.lblDepartamento.text=lista[indexPath.row].departamento
        row.lblFecha.text=lista[indexPath.row].fecha
        row.lblHora.text=lista[indexPath.row].hora
        return row
    }
    
    @IBAction func btnAgregar(_ sender: Any) {
        performSegue(withIdentifier: "nuevo", sender: nil)
    }
    

}

