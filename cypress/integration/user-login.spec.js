describe("Appointment", () => {

before(() => {
  cy.visit("/");
  cy.get('a[href*="users/new"]').click({force: true}).wait(500);
  cy.get('[id=user_first_name]').type("Lydia");
  cy.get('[id=user_last_name]').type("Miller-Jones");
  cy.get('[id=user_email]').type("Miller@test.com");
  cy.get('[id=user_password]').type("Millertestcom");
  cy.get('[id=user_password_confirmation]').type("Millertestcom");
  cy.get('[id=registerButton]').click().wait(500);


})


  beforeEach(() => {
    cy.visit("/");
    });

  it("There is products on the page", () => {
 
    cy.get(".products article").should("be.visible");
  });


  // it("can Signup new user first time", () => {
  //   cy.get('a[href*="users/new"]').click({force: true}).wait(500);
  //   cy.get('[id=user_first_name]').type("Lydia");
  //   cy.get('[id=user_last_name]').type("Miller-Jones");
  //   // cy.get('[id=user_email]').type("Miller@test.com")
  //   cy.get('[id=user_email]').type("Miller@test.com");
  //   cy.get('[id=user_password]').type("Millertestcom");
  //   cy.get('[id=user_password_confirmation]').type("Millertestcom");
  //   cy.get('[id=registerButton]').click().wait(500);
   
  // });



  it("cannot register same user", () => {

    cy.get('a[href*="users/new"]').click({force: true}).wait(500);
    cy.get('[id=user_first_name]').type("Lydia");
    cy.get('[id=user_last_name]').type("Miller-Jones");
     cy.get('[id=user_email]').type("Miller@test.com");
    cy.get('[id=user_password]').type("Millertestcom");
    cy.get('[id=user_password_confirmation]').type("Millertestcom");
    cy.get('[id=registerButton]').click().wait(500);
    cy.contains("Account created successfully!").should('not.exist');


  });

  it("Can login if user registered", () => {


    cy.get('a[href*="login"]').click({force: true}).wait(500);
    
    cy.get('[id=login_email]').type("Miller@test.com");
    cy.get('[id=login_password]').type("Millertestcom");
    cy.get('[name=commit]').click().wait(500);
    cy.contains("Successfully logged in!");
    cy.contains("Logged in as miller@test.com");


  });

  it("Can logout and login again", () => {
    cy.get('a[href*="login"]').click({force: true}).wait(500);
    
    cy.get('[id=login_email]').type("Miller@test.com");
    cy.get('[id=login_password]').type("Millertestcom");
    cy.get('[name=commit]').click().wait(500);
    cy.contains("Successfully logged in!");

    cy.get('a[href*="logout"]').click({force: true}).wait(500);
    cy.contains("Logged out!");

    cy.get('a[href*="login"]').click({force: true}).wait(500);
    
    cy.get('[id=login_email]').type("Miller@test.com");
    cy.get('[id=login_password]').type("Millertestcom");
    cy.get('[name=commit]').click().wait(500);
    cy.contains("Successfully logged in!");
    cy.contains("Logged in as miller@test.com");
    


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


 

});