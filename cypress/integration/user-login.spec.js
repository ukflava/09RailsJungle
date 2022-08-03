describe("Appointment", () => {
  beforeEach(() => {
    // cy.request("GET", "/api/debug/reset");
    cy.visit("/");
    // cy.contains("You must be logged in to access this page.");
   });

  // it("Should book an interview", () => {
  //   cy.get("[alt=Add]")
  //     .first()
  //     .click();

  //   cy.get("[data-testid=student-name-input]").type("Lydia Miller-Jones")
  //   cy.get("[alt='Sylvia Palmer']").click();
  //   cy.get("[alt='Scented Blade']").click();

  //   cy.contains("Save").click();

  //   cy.contains(".appointment__card--show", "Lydia Miller-Jones");
  //   cy.contains(".appointment__card--show", "Sylvia Palmer");
  // });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });


  it("Signup", () => {






    cy.get('a[href*="users/new"]').click({force: true}).wait(500)
    // cy.get('a[href*="login"]').click({force: true}).wait(500)
  //   cy.get(".products article").should("have.length", 2);
  // cy.findByText("Sign Up").should("exist")
  // cy.contains('Sign Up').click()
  // cy.get('href="/users/new').click().wait(500);;
    // cy.get("[alt='Scented Blade']").click().wait(500);
    // cy.get("[type='submit']").click({ multiple: true }).wait(500);
    // cy.contains("The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas.");
    // cy.get("[class='nav-item end-0']").click({ multiple: true });
    // cy.contains("TOTAL");
  });

 

})