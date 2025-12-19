<h1>{{FormTitle}}</h1>
<form action="index.php?page=Noticias_NoticiasForm&mode={{mode}}&id={{noticia_id}}" method="POST">
    <label>Título</label>
    <input type="text" name="titulo" value="{{titulo}}" {{readonly}} required /><br>
    <label>Resumen</label>
    <textarea name="resumen" {{readonly}} required>{{resumen}}</textarea><br>
    <label>Fecha</label>
    <input type="date" name="fecha_publicacion" value="{{fecha_publicacion}}" {{readonly}} required /><br>
    <label>Visible</label>
    <input type="checkbox" name="visible" {{is_visible}} {{if readonly}}disabled{{endif readonly}} /><br>
    {{if showBtn}}<button type="submit">Confirmar</button>{{endif showBtn}}
    <button type="button" onclick="window.location.href='index.php?page=Noticias_NoticiasList'">Cancelar</button>
</form>