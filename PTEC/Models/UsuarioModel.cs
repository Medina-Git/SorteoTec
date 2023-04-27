using System.ComponentModel.DataAnnotations;

namespace PTEC.Models
{
    public class UsuarioModel
    {
        [Required(ErrorMessage = "El campo Nombre es requerido")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "El campo Nombre solo debe contener letras y espacios")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "El campo Correo electrónico es requerido")]
        [EmailAddress(ErrorMessage = "El campo Correo electrónico no es una dirección de correo electrónico válida")]
        public string CorreoElectronico { get; set; }

        [Required(ErrorMessage = "El campo Teléfono es requerido")]
        [RegularExpression(@"^\d{10}$", ErrorMessage = "El campo Teléfono debe contener 10 dígitos numéricos")]
        public string Telefono { get; set; }
    }
}
