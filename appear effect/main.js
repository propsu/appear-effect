const scrollApear = () => {
    const elements = document.querySelectorAll('.post--text');
    const screenPosition = window.innerHeight - 200;

    elements.forEach((el, i)=>{
        const top = el.getBoundingClientRect().top;
        if(top < screenPosition){
            el.classList.add('appear');
        }
    });
}

window.addEventListener('scroll', scrollApear);