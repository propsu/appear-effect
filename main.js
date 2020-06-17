const list = {
    createBtn: document.querySelector('.create'),
    main: document.querySelector('main'),
    init(){
        this.createBtn.addEventListener('click', ()=>{
            this.getCities().then(res=>{
                res.forEach(el=>{
                    this.createItem(el);
                });
                window.addEventListener('scroll', this.scrollAppear);
                this.createBtn.remove();
            });
        });
    },
    getCities(){
        return fetch('dane.php').then(res=>res.json());
    },
    createItem(city){
        const post = document.createElement('div');
        post.classList.add('post');

        const postText = document.createElement('div');
        postText.classList.add('post--text');

        const cityDiv = document.createElement('div');
        cityDiv.classList.add('post--city');

        const cityName = document.createElement('h1');
        cityName.innerHTML = city.name;

        const cityPrefecture = document.createElement('p');
        cityPrefecture.innerHTML = `<span>Prefektura: </span><span>${city.prefecture}</span>`;

        const cityPopulation = document.createElement('p');
        cityPopulation.innerHTML = `<span>Populacja: </span><span>${this.convertBigNumber(city.population)} os. </span>`;

        const citySurface = document.createElement('p');
        citySurface.innerHTML = `<span>Powierzchnia:</span> <span>${city.surface}km<sup>2</sup></span>`;

        imgSrc = city.name.toLowerCase()+'.jpg';
        const postImg = document.createElement('img');
        postImg.setAttribute('src', 'img/' + imgSrc);
        postImg.setAttribute('alt', city.name);
        postImg.classList.add('post--img');

        cityDiv.append(cityName);
        cityDiv.append(cityPrefecture);
        cityDiv.append(cityPopulation);
        cityDiv.append(citySurface);
        postText.append(cityDiv);

        if(city.id%2 == 0){
            post.append(postImg);
            post.append(postText);
        } else {
            post.append(postText);
            post.append(postImg);
        }

        this.main.append(post);
    },
    scrollAppear(){
        const elements = document.querySelectorAll('.post--text');
        const screenPosition = window.innerHeight - 200;

        elements.forEach((el, i)=>{
            const top = el.getBoundingClientRect().top;
            if(top < screenPosition){
                el.classList.add('appear');
            }
        });
    },
    convertBigNumber(int){
        let number = String(int);
        const len = number.length;

        for(let i = 0; i < len; i++){
            if(i%3 == 0){
                number = number.substr(0, len - i) + " " + number.substr(len - i);
            }
        }
        return number
    }
}

list.init();

