import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pictures"
export default class extends Controller {
  static targets = ["thumbnail"];

  connect() {
    console.log(this.thumbnailTarget);
  }
}
