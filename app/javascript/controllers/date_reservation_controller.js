import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="date-reservation"
export default class extends Controller {
  static targets = [ "start", "end", "total" ]

  static values = {
    price: Number
  }

  connect() {
    console.log("clic")
  }

  calculate() {
    const startDate = new Date(this.startTarget.value);
    const endDate = new Date(this.endTarget.value);
    let timeInterval = (endDate - startDate) / (1000 * 3600 * 24);
    const fullPrice = timeInterval * this.priceValue;
    if (!isNaN(endDate)) {
      this.totalTarget.innerText = `Prix total: ${fullPrice}€`
    }
  }
}
