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


  it("can Signup new user", () => {






    cy.get('a[href*="users/new"]').click({force: true}).wait(500)
    cy.get('[id=user_first_name]').type("Lydia")
    cy.get('[id=user_last_name]').type("Miller-Jones")
    // cy.get('[id=user_email]').type("Miller@test.com")
    cy.get('[id=user_email]').type("Miller@test.com")
    cy.get('[id=user_password]').type("Millertestcom")
    cy.get('[id=user_password_confirmation]').type("Millertestcom")
    cy.get('[id=registerButton]').click().wait(500)
    cy.contains("Account created successfully!");


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
  it("Can login", () => {


    cy.get('a[href*="login"]').click({force: true}).wait(500)
    
    cy.get('[id=login_email]').type("Miller@test.com")
    cy.get('[id=login_password]').type("Millertestcom")
        cy.get('[f.submit]').click().wait(500)
    cy.contains("Miller@test.com");


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