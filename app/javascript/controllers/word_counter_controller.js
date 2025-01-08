import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="word-counter"
export default class extends Controller {
  static targets = ["editor", "counter"];

  connect() {
    console.log("Stimulus controller has connected!", this.element)
    this.updateWordCount(); // Initialize word count
    // .bind(this) ensures that the this inside updateWordCount always refers
    // To the stimulus controller instance
    // When the function this.updateWordCount is passed as an event listener
    // The context of this will not refer to the stimulus controller anymore, 
    // Rather it will refer to the trix-editor
    this.editorTarget.addEventListener("trix-change", this.updateWordCount.bind(this));
  }

  updateWordCount() {
    const bodyString = this.editorTarget.editor.getDocument().toString();
    if (bodyString !== "\n") {
      const wordCount = bodyString.trim().split(/\s+/).length;
      this.counterTarget.textContent = wordCount;
    }
    else {
      this.counterTarget.textContent = 0;
    }
  }
}
