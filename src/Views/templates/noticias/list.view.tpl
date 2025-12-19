<h1>Gestión de Noticias</h1>
<table class="WWList">
    <thead>
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Fecha</th>
            <th>Visible</th>
            <th><a href="index.php?page=Noticias_NoticiasForm&mode=INS">Nuevo</a></th>
        </tr>
    </thead>
    <tbody>
        {{foreach noticias}}
        <tr>
            <td>{{noticia_id}}</td>
            <td>{{titulo}}</td>
            <td>{{fecha_publicacion}}</td>
            <td>{{if visible}}SÍ{{endif visible}}{{ifnot visible}}NO{{endifnot visible}}</td>
            <td>
                <a href="index.php?page=Noticias_NoticiasForm&mode=UPD&id={{noticia_id}}">Editar</a> | 
                <a href="index.php?page=Noticias_NoticiasForm&mode=DEL&id={{noticia_id}}">Eliminar</a> | 
                <a href="index.php?page=Noticias_NoticiasForm&mode=DSP&id={{noticia_id}}">Ver</a>
            </td>
        </tr>
        {{endfor noticias}}
    </tbody>
</table>