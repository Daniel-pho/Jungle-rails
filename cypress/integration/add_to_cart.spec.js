describe('Visit Jungle App home page', () => {
  it('successfully loads', () => {
    cy.visit('/')
    cy.get('header.hero').should('exist')
  })

  it("There is products on the page", () => {
  cy.get(".products article").should("be.visible");
});
it("There is 2 products on the page", () => {
  cy.get(".products article").should("have.length", 2);
});

it("clicks the cart button", () => {
  cy.get('article button.btn').first().click()
});


// it('successfully navigates to product detail page', () => {
//   // Find a product on the home page and click on it
//   cy.get('.btn').first().click() // Adjust the selector according to your product list

//   // Assertion: Check if the URL changes to the product detail page
//   //cy.url().should('include', '/products/') // Adjust the URL path if needed

//   // Assertion: Check if the product detail page contains the expected elements
//   //cy.get('.product-detail h1').should('contain', 'Scented Blade') // Adjust the selector and content according to your product detail page
// })

})
