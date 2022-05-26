import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    this.updateNavbar

  }

  updateNavbar() {
    console.log(window.innerHeight);
    console.log(window.scrollY);
    if (window.scrollY >= 40) {
      this.element.classList.add("navbar-lewagon-white")

    } else {
      this.element.classList.remove("navbar-lewagon-white")
      console.log("up up up")
    }
  }
}
