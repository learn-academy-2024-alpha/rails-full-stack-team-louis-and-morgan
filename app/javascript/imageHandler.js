import computerPath from '../assets/images/computer.jpg'
import codePath from '../assets/images/code.jpg'
import coffeePath from '../assets/images/coffee.jpg'
import plantPath from '../assets/images/plant.jpg'

document.addEventListener("DOMContentLoaded", function() {
const blogImagePaths = [
  computerPath,
  codePath,
  coffeePath,
  plantPath
]

fetch('/fetch_image_paths', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({ image_paths: blogImagePaths })
})
.then(response => response.json())
.then(data => {

  console.log(data); 
})
.catch(error => console.error('Error:', error));
});