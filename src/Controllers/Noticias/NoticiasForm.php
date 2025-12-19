<?php
namespace Controllers\Noticias;
use Controllers\PublicController;
use Dao\Noticias\Noticias as DaoNoticias;
use Views\Renderer;
use Utilities\Site;

class NoticiasForm extends PublicController {
    private $viewData = [];
    private $mode = "DSP";
    private $modeDescriptions = ["DSP"=>"Detalle", "INS"=>"Nueva", "UPD"=>"Editar", "DEL"=>"Eliminar"];

    public function run(): void {
        $this->mode = $_GET["mode"] ?? "DSP";
        $id = $_GET["id"] ?? 0;
        if ($this->isPostBack()) {
            $this->handlePost($id);
        }
        if ($this->mode !== "INS") {
            $this->viewData = array_merge($this->viewData, DaoNoticias::obtenerPorId($id));
        }
        $this->viewData["FormTitle"] = $this->modeDescriptions[$this->mode] . " Noticia";
        $this->viewData["readonly"] = ($this->mode == 'DEL' || $this->mode == 'DSP') ? 'readonly' : '';
        $this->viewData["showBtn"] = ($this->mode !== 'DSP');
        $this->viewData["is_visible"] = ($this->viewData["visible"] ?? 0) == 1 ? "checked" : "";
        Renderer::render("noticias/form", $this->viewData);
    }

    private function handlePost($id) {
        $titulo = $_POST["titulo"];
        $resumen = $_POST["resumen"];
        $fecha = $_POST["fecha_publicacion"];
        $visible = isset($_POST["visible"]) ? 1 : 0;
        switch ($this->mode) {
            case 'INS': DaoNoticias::insertar($titulo, $resumen, $fecha, $visible); break;
            case 'UPD': DaoNoticias::actualizar($id, $titulo, $resumen, $fecha, $visible); break;
            case 'DEL': DaoNoticias::eliminar($id); break;
        }
        Site::redirectTo("index.php?page=Noticias_NoticiasList");
    }
}