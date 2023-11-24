import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="date-reservation"
export default class extends Controller {
  static targets = [ "start", "end" ]

  connect() {
    console.log("clic")
  }

  calculate() {
    const startDate = new Date(this.startTarget.value);
    console.log(`Start Date: ${startDate}`)

    const endDate = new Date(this.endTarget.value);
    console.log(`End Date: ${endDate}`)

    let timeInterval = (endDate - startDate) / (1000 * 3600 * 24); ;
    console.log(`Time Interval in days: ${timeInterval}`)

  }
}
