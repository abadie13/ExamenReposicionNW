<?php
namespace Controllers\Noticias;
use Controllers\PublicController;
use Dao\Noticias\Noticias as DaoNoticias;
use Views\Renderer;

class NoticiasList extends PublicController {
    public function run(): void {
        \Utilities\Site::addLink("public/css/noticias.css");
        $viewData = [];
        $viewData["noticias"] = DaoNoticias::obtenerTodas();
        Renderer::render("noticias/List", $viewData);
    }
}