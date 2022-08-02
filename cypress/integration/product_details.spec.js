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


  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
    cy.get("[alt='Scented Blade']").click();
    cy.contains("The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas.");
  });

 

})