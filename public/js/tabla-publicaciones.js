const obtenerPublicaciones = async () => {
    const response = await fetch('/api/publicaciones')
    const data = await response.json()
    return data;
}

const mostrarPublicaciones = (publicaciones = [], elementoHtml) => {

    let registros = "";

    // Método para recorrer los registros
    publicaciones.forEach(publicacion => {
        registros += `
            <tr>
                <td>
                    <img src="${publicacion.url_imagen}" style="border-radius:50%; height:60px; width: 60px">
                </td>
                <td>${publicacion.titulo}</td>
                <td>${publicacion.descripcion}</td>
                <td>${ (publicacion.fecha).split('T')[0] }</td>
                <td>
                    <a href="/admin/editar-publicacion/${publicacion.id}" class="btn btn-sm btn-warning">Editar</a>
                    <button class="btn btn-danger btn-sm btn-eliminar" onclick=eliminarPublicacion(${publicacion.id}) id="${publicacion.id}">Eliminar</button>
                </td>
        `
    })


    // Se crea la lista
    elementoHtml.innerHTML = registros;

}

const eliminarPublicacion = async (id) => {
    // const id = e.target.id;

    // Se envía la petición al servidor
    const response = await fetch(`/api/publicacion/${id}`, {
        method: 'delete'
    })

    const data = await response.json();
    alert(data.msg)
    location.reload();
}

// Cuando se carga el contenido del html y recursos estáticos, se solicitan las publicaciones y se muestran en la tabla
document.addEventListener('DOMContentLoaded', async () => {
    
    const publicaciones = await obtenerPublicaciones()
    if(!publicaciones) return alert('Error al obtener las publicaciones')

    // Modificar el DOM para mostrar las publicaciones
    const tbody = document.querySelector('#tabla-publicaciones')

    mostrarPublicaciones(publicaciones, tbody)
})