console.log("wordCounter has been imported")

document.addEventListener("turbo:load", function(event) {
  console.log("Turbo is loading wordCounter.js")
  console.log(event)
  
  const trixEditor = document.querySelector("trix-editor");
  const wordCountDisplay = document.querySelector("#word-count")
  if (trixEditor && wordCountDisplay) {
    function countWordsAndUpdateDisplay(event) {
      const editor = event.target.editor
      const bodyString = editor.getDocument().toString()
      
      // Trix editor automatically adds line feed which needs to be accounted for in word count
      // Can be seen with unicode value of 10 using bodyString.charCodeAt(0)
      // If you only return bodyString.trim().split(/\s+/).length as wordCount
      // An empty string will return a length of 1 due to .split() returning [""]
      if (bodyString !== "\n") {
        const wordCount = bodyString.trim().split(/\s+/).length
        wordCountDisplay.textContent = `Word Counter: ${wordCount}`
      } else {
        wordCountDisplay.textContent = "Word Counter: 0"
      }
    }

    trixEditor.addEventListener("trix-change", countWordsAndUpdateDisplay)
  }
})