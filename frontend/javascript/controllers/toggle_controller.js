import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["menu", "button", "closeButton"];

  toggleMenu() {
    this.menuTarget.classList.toggle('hidden');
  }
}
