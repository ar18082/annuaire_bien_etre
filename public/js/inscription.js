
const mySelectIl = document.getElementById('inscription_region');
const mySelect2Il = document.getElementById('inscription_ville');
const mySelect3Il = document.getElementById('inscription_codePostal');

mySelectIl.addEventListener('change', (e) => {
    const selectedOption = e.target.value;
    
      if (selectedOption !== "") {
          fetch('../json/Region-Ville-CodePostal.json')
          .then(response => response.json())
          .then(data => {
              // Filtrer les villes pour obtenir celles qui ont la région
              const Villes = data.filter(item => item.region === selectedOption).map(item => item.ville);
              const CP = data.filter(item => item.region == selectedOption).map(item=>item.codePostal); 
              
              // Ajouter une option pour chaque ville à l'élément mySelect2El
              mySelect2Il.innerHTML = '';
              Villes.forEach(ville => {
                  const optionElem = document.createElement('option');
                  optionElem.value = ville;
                  optionElem.textContent = ville;
                  mySelect2Il.appendChild(optionElem);
              });
              mySelect3Il.innerHTML = '';
              CP.forEach(codePost => {
                  const optionElem = document.createElement('option');
                  optionElem.value = codePost;
                  optionElem.textContent = codePost;
                  mySelect3Il.appendChild(optionElem);
              });
          })
  
      }else{
          fetch('../json/Region-Ville-CodePostal.json')
          .then(response => response.json())
          .then(data => {
              const Villes =data.map(item =>item.ville);
              const CP = data.map(item=>item.codePostal);    
              // Ajouter une option pour chaque ville à l'élément mySelect2El
              mySelect2Il.innerHTML = '';
              Villes.forEach(ville => {
                  const optionElem = document.createElement('option');
                  optionElem.value = ville;
                  optionElem.textContent = ville;
                  mySelect2Il.appendChild(optionElem);
              });
              mySelect3Il.innerHTML = '';
              CP.forEach(codePost => {
                  const optionElem = document.createElement('option');
                  optionElem.value = codePost;
                  optionElem.textContent = codePost;
                  mySelect3Il.appendChild(optionElem);
              });
          })
      }
    
  
      
  });
  
  mySelect2Il.addEventListener('change', (e) => {
      const selectedOption = e.target.value;
      
      
      fetch('../json/Region-Ville-CodePostal.json')
      .then(response => response.json())
      .then(data => {
          // Filtrer les villes pour obtenir celles qui ont la région
          
          const Regions = data.filter(item => item.ville === selectedOption).map(item => item.region);
          const selectedRegion = Regions.length > 0 ? Regions[0] : null; // Récupérer la région correspondante à la ville sélectionnée
          console.log(selectedRegion);
          const CP = data.filter(item => item.ville == selectedOption).map(item=>item.codePostal); 
  
          
          Regions.forEach(region => {
              const optionElem = document.createElement('option');
              optionElem.value = region;
              optionElem.textContent = region;
              if (region === selectedRegion) {
                  optionElem.setAttribute('selected', 'selected');
              }
              mySelectIl.appendChild(optionElem);
          })     
          
          mySelect3Il.innerHTML = '';
          CP.forEach(codePost => {
              const optionElem = document.createElement('option');
              optionElem.value = codePost;
              optionElem.textContent = codePost;
              mySelect3Il.appendChild(optionElem);
          });
      })
  });
  

const prestataireInput = document.getElementById('inscription_Prestataire');
const inscription_Nom_societe = document.getElementById('inscription_Nom_societe');
const inscription_SiteInternet = document.getElementById('inscription_SiteInternet');
const inscription_Numtel = document.getElementById('inscription_Numtel');
const inscription_Numtva = document.getElementById('inscription_Numtva');
const inscription_p = document.getElementById('p');



prestataireInput.addEventListener('change', (e) => {

    
    if (e.target.checked && e.target.value === '1' ) {
        inscription_p.style.display ='block';
        /*
        inscription_Nom_societe.style.display = 'block';
        inscription_Nom_societe.style.display = 'block';
        inscription_SiteInternet.style.display = 'block';
        inscription_Numtel.style.display = 'block';
        inscription_Numtva.style.display = 'block';*/
    } else {
        inscription_p.style.display =' none';
        /*
        inscription_Nom_societe.style.display = 'none';
        inscription_SiteInternet.style.display = 'none';
        inscription_Numtel.style.display = 'none';
        inscription_Numtva.style.display = 'none';*/
    }
});
