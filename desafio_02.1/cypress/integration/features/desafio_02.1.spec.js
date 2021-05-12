import HomePage from '../pages/homePage';

const homePage = new HomePage();

describe('Cypress challenge Frontend', () => {
    it('Should assert map as visible', () => {
        cy.visit('/')
        homePage.acessarMenuPraVoce()
        cy.get(homePage.ondeUsarMeuVRButton).click()
        cy.get(homePage.mapGoogle).should('be.visible')
    })
  })
