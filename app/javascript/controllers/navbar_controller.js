import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    this.updateNavbar

  }

  updateNavbar() {

    if (window.scrollY >= 40) {
      this.element.classList.add("navbar-lewagon-white")
      this.element.classList.remove("navbar-home")

    } else {
      this.element.classList.remove("navbar-lewagon-white")
      this.element.classList.add("navbar-home")
    }
  }
}
