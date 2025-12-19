<h1>Gestión de Noticias</h1>
<section>
    <table class="WWList">
        <thead>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Fecha</th>
                <th>Visible</th>
                <th class="center">
                    <a href="index.php?page=Noticias_NoticiasForm&mode=INS" class="btn-primary">Nueva Noticia</a>
                </th>
            </tr>
        </thead>
        <tbody>
            {{foreach noticias}}
            <tr>
                <td>{{noticia_id}}</td>
                <td>{{titulo}}</td>
                <td>{{fecha_publicacion}}</td>
                <td class="center">
                    {{if visible}} <span style="color: green;">✅ Sí</span> {{endif visible}}
                    {{ifnot visible}} <span style="color: red;">❌ No</span> {{endifnot visible}}
                </td>
                <td class="center">
                    <a href="index.php?page=Noticias_NoticiasForm&mode=DSP&id={{noticia_id}}">Ver</a>
                    &nbsp;|&nbsp;
                    <a href="index.php?page=Noticias_NoticiasForm&mode=UPD&id={{noticia_id}}">Editar</a>
                    &nbsp;|&nbsp;
                    <a href="index.php?page=Noticias_NoticiasForm&mode=DEL&id={{noticia_id}}">Eliminar</a>
                </td>
            </tr>
            {{endfor noticias}}
        </tbody>
    </table>
</section>