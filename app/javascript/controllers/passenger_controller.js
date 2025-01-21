import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passenger"
export default class extends Controller {
  static targets = ["addform"];
  static values = { currentCount: Number, maxCount: Number }

  connect() {
  }

  addForm(){
    //create div for one passenger
    const container = document.createElement("div");
    container.className = 'passenger';

    //increment current passenger count
    this.currentCountValue++

    //create name field
    const nameFieldContainer = document.createElement("div");
    nameFieldContainer.className = 'field';

    //add name label
    const name_label = document.createElement("label");
    name_label.className = 'label';
    name_label.setAttribute("for", `booking_passengers_attributes_${this.currentCountValue - 1}_name`);
    name_label.textContent = 'Name';
    nameFieldContainer.appendChild(name_label);

    //Adding name field
    const nameInput = document.createElement("input");
    nameInput.className = 'input';
    nameInput.type = 'text';
    nameInput.name = `booking[passengers_attributes][${this.countValue - 1}][name]`;
    nameInput.id = `booking_passengers_attributes_${this.countValue - 1}_name`;
    nameFieldContainer.appendChild(nameInput);

    container.appendChild(nameFieldContainer);

    this.addformTarget.appendChild(container);
  }

  removeForm(){

  }
}
