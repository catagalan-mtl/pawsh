import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pictures"
export default class extends Controller {
  static targets = ["thumbnail", "view"];

  connect() {
  }

  update(e) {
    this.viewTarget.innerHTML = e.target.outerHTML;
    this.viewTarget.childNodes[0].classList.remove("thumbnail");
  }
}
