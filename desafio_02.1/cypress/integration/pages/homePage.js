export default class HomePage {
    path = "/login";

    // Criando variáveis que representam os elementos manipulados mapeados pelos localizadores (xpath, css etc)
    menuButton = "button.vr-menu-trigger.vr-menu-trigger--open"
    praVoceButton = "body > header > nav > div.vr-main-navigation__holder > ul > li:nth-child(3) > a";
    ondeUsarMeuVRButton = "div.vr-panel__contents.slick-initialized.slick-slider > div > div > div.vr-panel__block-content.slick-slide.slick-current.slick-active > div > div > div.vr-panel__actions > div > a"
    mapGoogle = ".vr-section-map"

    // Criando metódos independentes para ações com os elementos desta página
    acessarMenuPraVoce(){
        cy.get(this.menuButton).click();
        cy.get(this.praVoceButton).click();
    }

}
