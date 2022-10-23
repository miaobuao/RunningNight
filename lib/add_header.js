window.onload = ()=>{
    new QRCode(document.getElementById("page-qr"), location.href)
    let h = document.createElement("div")
    h.className = "header"
    document.body.style.marginTop = "100px"
    let title = document.createElement("div")
    title.id = "title"
    title.innerHTML = '科目三考场'
    let logo = document.createElement('div')
    let iholder = document.createElement('div')
    iholder.id = 'logo'
    let img = document.createElement('img')
    img.src = "../../assets/128x_.png"
    iholder.appendChild(img)
    h.appendChild(iholder)
    h.appendChild(title)
    document.body.append(h)
    console.log(h)
}