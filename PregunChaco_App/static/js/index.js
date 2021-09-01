const formRespuesta = document.querySelector('#form-respuesta')
const alert = document.querySelector("#alert p")

formRespuesta.addEventListener('submit', (e) => {
  console.log( e.target.value )
  check()
  function check() {
    var r = document.getElementsByName("respuesta_pk")
    var c = -1
    
    for(var i=0; i < r.length; i++){
       if(r[i].checked) {
          c = i; 
       }
    }
    if (c == -1) {
      e.preventDefault()
      alerta("Seleccione una opción");
    } 
  }

})

function alerta(aviso) {
  const span = document.createElement("span");
  span.classList.add('text-white',"bg-red-500", "p-4", "text-white", "rounded-md", "text-xl","animate__animated","animate__flash")
  span.textContent = aviso;

  if (alert.textContent == 0) {
    alert.style.display = "grid";
    alert.append(span);
  } else {
    alert.removeChild(alert.firstChild);
    alert.style.display = "grid";
    alert.append(span);
  }
}