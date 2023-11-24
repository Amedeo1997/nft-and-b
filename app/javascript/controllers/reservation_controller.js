import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  hideButton(event) {
    event.preventDefault();
    this.element.classList.add("hidden");
  }
}
