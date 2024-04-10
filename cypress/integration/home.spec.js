describe('Visit Jungle App home page', () => {
  it('Visits the home page', () => {
    // Replace 'http://your-jungle-app-url.com' with the actual URL of your Jungle App
    cy.visit('/')
    cy.get('header.hero').should('exist')
  })
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
})