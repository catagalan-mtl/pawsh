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
    console.log(this.viewTarget);
    this.viewTarget.childNodes[0].classList.remove("thumbnail");
    console.log(this.viewTarget);
  }
}
