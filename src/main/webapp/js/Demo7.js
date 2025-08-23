function demo2(password) {
  const s= document.getElementById('h3');
  
  if (password.length <= 3) {
   s.textContent = 'Weak Password';
    s.style.color = 'red';
  } else if (password.length >= 4 && password.length <= 7) {
   s.textContent = 'Good';
    s.style.color = 'orange';
  } else if (password.length >= 8) {
  s.textContent = 'Strong Password';
    s.style.color = 'green';
  }
}
