<?php
namespace Dao\Noticias;
use Dao\Table;

class Noticias extends Table {
    public static function obtenerTodas() {
        $sqlstr = "SELECT * FROM noticias;";
        return self::obtenerRegistros($sqlstr, []);
    }
    public static function obtenerPorId($id) {
        $sqlstr = "SELECT * FROM noticias WHERE noticia_id = :id;";
        return self::obtenerUnRegistro($sqlstr, ["id" => $id]);
    }
    public static function insertar($titulo, $resumen, $fecha, $visible) {
        $sqlstr = "INSERT INTO noticias (titulo, resumen, fecha_publicacion, visible) VALUES (:titulo, :resumen, :fecha, :visible);";
        return self::executeNonQuery($sqlstr, ["titulo" => $titulo, "resumen" => $resumen, "fecha" => $fecha, "visible" => $visible]);
    }
    public static function actualizar($id, $titulo, $resumen, $fecha, $visible) {
        $sqlstr = "UPDATE noticias SET titulo = :titulo, resumen = :resumen, fecha_publicacion = :fecha, visible = :visible WHERE noticia_id = :id;";
        return self::executeNonQuery($sqlstr, ["id" => $id, "titulo" => $titulo, "resumen" => $resumen, "fecha" => $fecha, "visible" => $visible]);
    }
    public static function eliminar($id) {
        $sqlstr = "DELETE FROM noticias WHERE noticia_id = :id;";
        return self::executeNonQuery($sqlstr, ["id" => $id]);
    }
}