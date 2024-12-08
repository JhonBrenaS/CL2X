

import UIKit

class NuevoDelitoViewController: UIViewController {

    @IBOutlet weak var txtCiudad: UITextField!
    
    @IBOutlet weak var txtDepartamento: UITextField!
    
    @IBOutlet weak var txtDelito: UITextField!
    
    @IBOutlet weak var txtDescripcion: UITextField!
    
    @IBOutlet weak var txtFecha: UITextField!
    
    @IBOutlet weak var txtHora: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnRegistrar(_ sender: Any) {
        let ciu=getCiudad()
        let depa=getDepartamento()
        let del=getDelito()
        let des=getDescripcion()
        let fecha=getFecha()
        let hora=getHora()
        let obj=Delito(ciudad: ciu, departamento: depa, delito: del, descripcion: des, fecha: fecha, hora: hora)
        let estado=NavegadorControlador().save(bean: obj)
                if estado>0{
                    getVentana("Cliente registrado")
                }
                else
                {
                    getVentana("Error en el registro")
                }
    }
    
    
    @IBAction func btnCancelar(_ sender: Any) {
        performSegue(withIdentifier: "volver", sender: nil)

    }
    
    func getCiudad()->String{
        return txtCiudad.text ?? ""
    }
    func getDepartamento()->String{
        return txtDepartamento.text ?? ""
    }
    func getDelito()->String{
        return txtDelito.text ?? ""
    }
    func getDescripcion()->String{
        return txtDescripcion.text ?? ""
    }
    func getFecha()->String{
        return txtFecha.text ?? ""
    }
    func getHora()->String{
        return txtHora.text ?? ""
    }
    
    //funcion para crear ventana de mensaje
       func getVentana(_ msg:String){
           //crear ventana
           let ventana=UIAlertController(title: "Sistema", message: msg, preferredStyle: .alert)
           //crear boton
           ventana.addAction(UIAlertAction(title: "Aceptar", style: .default))
           //mostrar ventana
           present(ventana, animated: true)
       }
    
}
