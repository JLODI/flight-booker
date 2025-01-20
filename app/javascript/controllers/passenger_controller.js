import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passenger"
export default class extends Controller {
  static targets = ['passengerForm', 'addPassengerButton'];
  static values = { currentPassengerCount: Number, maxPassengerCount: Number }

  connect() {
  }

  addPassenger(){

  }

  removePassenger(){
    
  }
}
