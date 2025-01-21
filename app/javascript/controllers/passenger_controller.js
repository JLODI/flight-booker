import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passenger"
export default class extends Controller {
  static targets = ["addform"];
  static values = { maxCount: 4 }

  connect() {
    //count the number of passenger forms


  }

  addForm() {
    const passengerDivs = document.querySelectorAll(".passenger");
    const currentCountValue = passengerDivs.length;

    //create div for one passenger
    const container = document.createElement("div");
    container.className = 'passenger';

    if(currentCountValue < this.maxCountValue){
      //create name field
      const nameFieldContainer = document.createElement("div");
      nameFieldContainer.className = 'field';

      //add name label
      const name_label = document.createElement("label");
      name_label.className = 'label';
      name_label.setAttribute("for", `booking_passengers_attributes_${currentCountValue}_name`);
      name_label.textContent = 'Name';
      nameFieldContainer.appendChild(name_label);

      //add name field
      const nameInput = document.createElement("input");
      nameInput.className = 'input';
      nameInput.placeholder = "Type Your Name Here"
      nameInput.type = 'text';
      nameInput.name = `booking[passengers_attributes][${currentCountValue}][name]`;
      nameInput.id = `booking_passengers_attributes_${currentCountValue}_name`;
      nameFieldContainer.appendChild(nameInput);

      container.appendChild(nameFieldContainer);

      // create email field
      const emailFieldContainer = document.createElement("div");
      emailFieldContainer.className = 'field';

      // add email label
      const emailLabel = document.createElement("label");
      emailLabel.className = 'label';
      emailLabel.setAttribute("for", `booking_passengers_attributes_${currentCountValue}_email`);
      emailLabel.textContent = 'Email';
      emailFieldContainer.appendChild(emailLabel);

      // add email field
      const emailInput = document.createElement("input");
      emailInput.className = 'input';
      emailInput.placeholder = "YourEmailHere@email.com"
      emailInput.type = 'text';
      emailInput.name = `booking[passengers_attributes][${currentCountValue}][email]`;
      emailInput.id = `booking_passengers_attributes_${currentCountValue}_email`;
      emailFieldContainer.appendChild(emailInput);

      container.appendChild(emailFieldContainer);

      this.addformTarget.appendChild(container);

    } else {
      alert('You can not add any more passengers')
    }
}

  removeForm(){
    const container = this.addformTarget.querySelectorAll(".passenger");

    if (container.length > 1) {
      container[container.length - 1].remove();
    }
  }
}
