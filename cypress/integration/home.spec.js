/// <reference types="cypress" />

describe('Jungle App', () => {
  it('should have the correct title', () => {
    cy.visit('/')
    cy.title().should('include', 'Jungle')
  })
})