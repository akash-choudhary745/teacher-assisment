function demo(password) {
  const ps= document.getElementById('h4');
  
  if (password.length <= 3) {
   ps.textContent = 'Weak Password';
    ps.style.color = 'red';
  } else if (password.length >= 4 && password.length <= 7) {
   ps.textContent = 'Good';
    ps.style.color = 'orange';
  } else if (password.length >= 8) {
  ps.textContent = 'Strong Password';
    ps.style.color = 'green';
  }
}
