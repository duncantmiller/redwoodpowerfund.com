import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggle", "sunIcon", "moonIcon"]

  connect() {
    // Check for saved theme or default to system preference
    const savedTheme = localStorage.getItem('theme')
    const systemPrefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches

    if (savedTheme === 'dark' || (!savedTheme && systemPrefersDark)) {
      this.enableDarkMode()
    } else {
      this.enableLightMode()
    }

    // Listen for system theme changes
    window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', (e) => {
      if (!localStorage.getItem('theme')) {
        if (e.matches) {
          this.enableDarkMode()
        } else {
          this.enableLightMode()
        }
      }
    })
  }

  toggle() {
    if (document.documentElement.classList.contains('dark')) {
      this.enableLightMode()
    } else {
      this.enableDarkMode()
    }
  }

  enableDarkMode() {
    document.documentElement.classList.add('dark')
    localStorage.setItem('theme', 'dark')
    this.updateIcons('dark')
  }

  enableLightMode() {
    document.documentElement.classList.remove('dark')
    localStorage.setItem('theme', 'light')
    this.updateIcons('light')
  }

  updateIcons(theme) {
    if (this.hasSunIconTarget && this.hasMoonIconTarget) {
      if (theme === 'dark') {
        this.sunIconTarget.classList.add('hidden')
        this.moonIconTarget.classList.remove('hidden')
      } else {
        this.sunIconTarget.classList.remove('hidden')
        this.moonIconTarget.classList.add('hidden')
      }
    }
  }
}
