
const mySelectEl = document.getElementById('search_region');
const mySelect2El = document.getElementById('search_ville');
const mySelect3El = document.getElementById('search_codePostal');

mySelectEl.addEventListener('change', (e) => {
  const selectedOption = e.target.value;
  
    if (selectedOption !== "") {
        fetch('json/Region-Ville-CodePostal.json')
        .then(response => response.json())
        .then(data => {
            // Filtrer les villes pour obtenir celles qui ont la région
            const Villes = data.filter(item => item.region === selectedOption).map(item => item.ville);
            const CP = data.filter(item => item.region == selectedOption).map(item=>item.codePostal); 
            
            // Ajouter une option pour chaque ville à l'élément mySelect2El
            mySelect2El.innerHTML = '';
            Villes.forEach(ville => {
                const optionElem = document.createElement('option');
                optionElem.value = ville;
                optionElem.textContent = ville;
                mySelect2El.appendChild(optionElem);
            });
            mySelect3El.innerHTML = '';
            CP.forEach(codePost => {
                const optionElem = document.createElement('option');
                optionElem.value = codePost;
                optionElem.textContent = codePost;
                mySelect3El.appendChild(optionElem);
            });
        })

    }else{
        fetch('json/Region-Ville-CodePostal.json')
        .then(response => response.json())
        .then(data => {
            const Villes =data.map(item =>item.ville);
            const CP = data.map(item=>item.codePostal);    
            // Ajouter une option pour chaque ville à l'élément mySelect2El
            mySelect2El.innerHTML = '';
            Villes.forEach(ville => {
                const optionElem = document.createElement('option');
                optionElem.value = ville;
                optionElem.textContent = ville;
                mySelect2El.appendChild(optionElem);
            });
            mySelect3El.innerHTML = '';
            CP.forEach(codePost => {
                const optionElem = document.createElement('option');
                optionElem.value = codePost;
                optionElem.textContent = codePost;
                mySelect3El.appendChild(optionElem);
            });
        })
    }
  

    
});

mySelect2El.addEventListener('change', (e) => {
    const selectedOption = e.target.value;
    
    
    fetch('json/Region-Ville-CodePostal.json')
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
            mySelectEl.appendChild(optionElem);
        })     
        
        mySelect3El.innerHTML = '';
        CP.forEach(codePost => {
            const optionElem = document.createElement('option');
            optionElem.value = codePost;
            optionElem.textContent = codePost;
            mySelect3El.appendChild(optionElem);
        });
    })
});





