//
//  NavegadorControlador.swift
//  CL2_Miguel
//
//  Created by Whiz on 7/12/24.
//

import UIKit

class NavegadorControlador:PMetodos {
    
    
    
    func save(bean: Delito) -> Int {
        var salida = -1
                let delegate=UIApplication.shared.delegate as! AppDelegate
                let contextoBD=delegate.persistentContainer.viewContext
                //3. acceder a la entidad
        let tabla=DelitosEntity(context: contextoBD)
                //4. setear los atributos del parametro bean a la "tabla"
        tabla.ciudad=bean.ciudad
        tabla.departamento=bean.departamento
        tabla.delito=bean.delito
        tabla.descripcion=bean.descripcion
        tabla.hora=bean.hora
        tabla.fecha=bean.fecha
        
                //5. controlar exception
                do{
                    //6. grabar
                    try contextoBD.save()
                    salida=1
                }catch let ex as NSError{
                    print(ex.localizedDescription)
                }
                return salida
    }
    
    func findAll() -> [DelitosEntity] {
        //declarar
        var datos:[DelitosEntity]!
                //1. crear objeto de la clase AppDelegate
                let delegate=UIApplication.shared.delegate as! AppDelegate
                //2. acceder a la variable persistentContainer "conexion con la BD"
                let contextoBD=delegate.persistentContainer.viewContext
                //3. obtener contenido de la entidad "ClienteEntity"
                let registros=DelitosEntity.fetchRequest()
                //4. controlar exception
                do{
                    //5. recorrido sobre "registros" y guardar la informacion
                    //dentro de datos
                    try datos = contextoBD.fetch(registros)
                }catch let ex as NSError{
                    print(ex.localizedDescription)
                }
                return datos
    }
    

}
