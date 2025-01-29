import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "image", "input" ];

  connect() {
    console.log("Image Preview Stimulus Controller connected!", this.element);
  }
  preview() {
    // const imageUpload = document.getElementById()
    // const image_element = imageTarget
    const file_input = this.inputTarget
    const [file] = file_input.files
    if (file) {
      this.imageTarget.src = URL.createObjectURL(file)
    }
    console.log(this.imageTarget)
    console.log("blasdasasd");
  }
}