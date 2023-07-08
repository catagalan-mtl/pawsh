import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pictures"
export default class extends Controller {
  static targets = ["thumbnail", "view"];

  connect() {
    console.log(this.viewTarget);
  }

  update(e) {
    console.log(e.target);
    this.viewTarget.innerHTML = e.target.outerHTML;
    this.viewTarget.classList.remove("thumbnail");
    console.log(this.viewTarget);
  }
}
