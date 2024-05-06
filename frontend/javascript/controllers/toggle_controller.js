import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["menu", "button", "closeButton", "link"];

  toggleMenu() {
    this.menuTarget.classList.toggle('hidden');
  }

  closeMenu() {
    this.menuTarget.classList.add('hidden');
  }
}
