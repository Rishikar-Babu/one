<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>VaraCart — Modern E-commerce Demo</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
:root{--bg:#f6f7fb;--card:#fff;--ink:#15171c;--muted:#6d7280;--line:#e7e9ef;--brand:#6c4cff;--brand2:#8b5cf6;--dark:#11131a;--green:#169c67;--red:#e5484d;--shadow:0 12px 35px rgba(20,24,40,.08);--radius:18px}
*{box-sizing:border-box;margin:0;padding:0}html{scroll-behavior:smooth}body{font-family:Inter,Arial,sans-serif;background:var(--bg);color:var(--ink);line-height:1.5}button,input,select{font:inherit}button{border:0;cursor:pointer}a{text-decoration:none;color:inherit}.container{max-width:1240px;margin:auto;padding:0 22px}
.topbar{background:var(--dark);color:#fff;font-size:12px;padding:9px 0}.topbar .container{display:flex;justify-content:space-between;gap:20px}
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);backdrop-filter:blur(15px);border-bottom:1px solid var(--line)}.head{height:74px;display:flex;align-items:center;gap:26px}
.logo{font-family:"Playfair Display";font-size:25px;font-weight:800;white-space:nowrap}.logo span{color:var(--brand)}
nav{display:flex;gap:5px;flex:1}nav a{padding:9px 12px;border-radius:10px;font-size:14px;font-weight:600;color:#4e5360}nav a:hover,nav a.active{background:#f0edff;color:var(--brand)}
.search{height:43px;display:flex;align-items:center;background:#f5f6f9;border:1px solid var(--line);border-radius:12px;width:300px;padding:0 13px;gap:9px}.search input{border:0;outline:0;background:transparent;width:100%;font-size:14px}.search i{color:#8a8f9c}
.actions{display:flex;align-items:center;gap:8px}.icon{width:42px;height:42px;border-radius:12px;background:#fff;border:1px solid var(--line);position:relative;color:#454a56}.icon:hover{background:#f4f1ff;color:var(--brand)}.badge-count{position:absolute;right:-4px;top:-5px;background:var(--brand);color:#fff;border-radius:50%;font-size:10px;min-width:19px;height:19px;display:grid;place-items:center;border:2px solid #fff}.user{display:flex;align-items:center;gap:9px;padding:5px 11px 5px 5px;background:#f3f0ff;border-radius:999px;color:var(--brand);font-size:13px;font-weight:700}.avatar{width:31px;height:31px;border-radius:50%;display:grid;place-items:center;background:linear-gradient(135deg,var(--brand),var(--brand2));color:#fff}
.hero{margin:24px auto 0;min-height:470px;border-radius:25px;overflow:hidden;position:relative;background:linear-gradient(110deg,#151629,#35207a 55%,#6d4cff)}.hero:before{content:"";position:absolute;inset:0;background:url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85") center/cover;opacity:.25}.hero .container{position:relative;z-index:1;display:flex;align-items:center;min-height:470px}.hero-copy{max-width:610px;color:#fff}.eyebrow{display:inline-flex;padding:7px 12px;border-radius:999px;background:rgba(255,255,255,.13);border:1px solid rgba(255,255,255,.2);font-size:12px;font-weight:700;margin-bottom:17px}.hero h1{font-family:"Playfair Display";font-size:58px;line-height:1.05;margin-bottom:17px}.hero p{font-size:16px;color:#e7e4f4;max-width:540px;margin-bottom:26px}.hero-actions{display:flex;gap:11px;flex-wrap:wrap}
.btn{padding:13px 19px;border-radius:12px;font-weight:700;font-size:14px;display:inline-flex;align-items:center;gap:8px}.primary{background:var(--brand);color:#fff}.primary:hover{background:#5940df}.light{background:#fff;color:#222}.outline{background:transparent;border:1px solid var(--line)}.white-outline{border:1px solid rgba(255,255,255,.3);color:#fff;background:rgba(255,255,255,.08)}
.section{padding:55px 0}.section-head{display:flex;align-items:end;justify-content:space-between;margin-bottom:24px}.section-head h2{font-size:27px}.section-head p{color:var(--muted);font-size:14px;margin-top:4px}.link{color:var(--brand);font-weight:700;font-size:14px}
.features{display:grid;grid-template-columns:repeat(4,1fr);gap:15px}.feature{background:var(--card);border:1px solid var(--line);border-radius:15px;padding:19px;display:flex;gap:13px;align-items:center}.feature i{font-size:20px;color:var(--brand)}.feature b{font-size:13px}.feature span{display:block;font-size:12px;color:var(--muted)}
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}.cat{background:var(--card);border:1px solid var(--line);border-radius:16px;padding:20px 10px;text-align:center;cursor:pointer;transition:.2s}.cat:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:#d9d0ff}.cat .cat-icon{width:48px;height:48px;margin:auto auto 10px;border-radius:14px;background:#f0edff;color:var(--brand);display:grid;place-items:center}.cat b{font-size:13px}.cat small{display:block;color:var(--muted);font-size:11px;margin-top:3px}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}.product{background:var(--card);border:1px solid var(--line);border-radius:18px;overflow:hidden;transition:.2s;position:relative}.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}.pimg{height:245px;background:#f0f1f5;position:relative;overflow:hidden}.pimg img{width:100%;height:100%;object-fit:cover;transition:.35s}.product:hover .pimg img{transform:scale(1.04)}.pill{position:absolute;left:12px;top:12px;padding:5px 9px;background:#fff;border-radius:999px;font-size:10px;font-weight:800}.pill.sale{background:#ffe9ea;color:var(--red)}.wish{position:absolute;right:12px;top:12px;width:35px;height:35px;border-radius:50%;background:#fff;color:#555;box-shadow:0 4px 15px #0001}.wish.active{color:var(--red)}.pbody{padding:15px}.category{font-size:10px;color:var(--brand);font-weight:800;text-transform:uppercase;letter-spacing:.7px}.pbody h3{font-size:15px;margin:6px 0;line-height:1.35}.rating{font-size:12px;color:#e7a900}.rating span{color:var(--muted)}.price{display:flex;align-items:center;gap:8px;margin-top:9px}.price strong{font-size:18px}.old{text-decoration:line-through;color:#9ca1ad;font-size:13px}.pfooter{padding:0 15px 15px;display:flex;gap:8px}.add{flex:1;padding:11px;border-radius:10px;background:#f0edff;color:var(--brand);font-weight:800}.add:hover{background:var(--brand);color:#fff}.quick{width:42px;border:1px solid var(--line);border-radius:10px;background:#fff}
.deal{background:#171927;border-radius:22px;overflow:hidden;color:#fff;display:grid;grid-template-columns:1fr 1fr}.deal-img{min-height:370px;background:url("https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=1000&q=85") center/cover}.deal-copy{padding:45px}.deal-copy .eyebrow{color:#d9d2ff}.deal-copy h2{font-family:"Playfair Display";font-size:38px;line-height:1.1;margin:10px 0}.deal-copy p{color:#b9bdca}.deal-price{font-size:30px;font-weight:800;margin:20px 0}.deal-price del{font-size:17px;color:#858a99;margin-left:8px}.timer{display:flex;gap:9px;margin:22px 0}.time{background:#242737;border:1px solid #34384b;border-radius:11px;padding:9px 12px;text-align:center;min-width:62px}.time b{font-size:20px;display:block}.time small{color:#9da2b0;font-size:9px;text-transform:uppercase}
.news{background:linear-gradient(110deg,#eeeaff,#fff);border:1px solid #ddd6ff;border-radius:22px;padding:38px;display:flex;justify-content:space-between;align-items:center;gap:20px}.news h2{font-size:25px}.news p{color:var(--muted);margin-top:5px}.news form{display:flex;gap:8px;width:430px}.news input{flex:1;border:1px solid var(--line);background:#fff;border-radius:11px;padding:13px;outline:0}
footer{background:#101118;color:#d7d9e0;padding:50px 0 25px}.foot{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}.foot h4{color:#fff;margin-bottom:13px}.foot p,.foot a{font-size:13px;color:#9297a5}.foot a{display:block;margin:8px 0}.copyright{border-top:1px solid #282b35;margin-top:35px;padding-top:20px;color:#777c89;font-size:12px;text-align:center}
.overlay{position:fixed;inset:0;background:rgba(8,10,16,.72);backdrop-filter:blur(9px);z-index:100;display:flex;align-items:center;justify-content:center;padding:20px}.overlay.hidden{display:none}.modal{width:100%;max-width:420px;background:#fff;border-radius:22px;padding:32px;box-shadow:0 30px 90px #0005;position:relative}.close{position:absolute;right:15px;top:15px;width:35px;height:35px;border-radius:50%;background:#f3f4f7}.modal-logo{width:54px;height:54px;border-radius:16px;background:linear-gradient(135deg,var(--brand),var(--brand2));display:grid;place-items:center;color:#fff;font-size:21px;margin-bottom:18px}.modal h2{font-size:25px}.modal p{color:var(--muted);font-size:13px;margin:5px 0 22px}.login-note{background:#f4f1ff;border:1px solid #e1dcff;padding:12px;border-radius:12px;font-size:12px;color:#5c51a5;margin-bottom:18px}.field{margin-bottom:14px}.field label{display:block;font-size:12px;font-weight:700;margin-bottom:6px}.field input{width:100%;padding:13px;border:1px solid var(--line);border-radius:11px;outline:0}.field input:focus{border-color:var(--brand);box-shadow:0 0 0 3px #6c4cff18}.login-btn{width:100%;justify-content:center}.error{color:var(--red);font-size:12px;text-align:center;margin-top:10px;display:none}
.drawer{position:fixed;right:0;top:0;height:100%;width:min(430px,100%);background:#fff;z-index:90;transform:translateX(100%);transition:.3s;box-shadow:-15px 0 50px #0002;display:flex;flex-direction:column}.drawer.open{transform:translateX(0)}.drawer-head{padding:20px;border-bottom:1px solid var(--line);display:flex;justify-content:space-between;align-items:center}.cart-items{padding:16px;overflow:auto;flex:1}.cart-row{display:flex;gap:12px;padding:12px 0;border-bottom:1px solid var(--line)}.cart-row img{width:65px;height:65px;object-fit:cover;border-radius:10px}.cart-row h4{font-size:13px}.cart-row p{font-size:12px;color:var(--muted)}.qty{display:flex;gap:6px;align-items:center;margin-top:7px}.qty button{width:25px;height:25px;border:1px solid var(--line);border-radius:7px;background:#fff}.cart-foot{border-top:1px solid var(--line);padding:18px}.subtotal{display:flex;justify-content:space-between;font-weight:800;margin-bottom:12px}
.toast{position:fixed;right:20px;bottom:20px;background:#15171c;color:#fff;padding:12px 16px;border-radius:11px;font-size:13px;box-shadow:var(--shadow);transform:translateY(20px);opacity:0;pointer-events:none;transition:.25s;z-index:120}.toast.show{transform:none;opacity:1}
.mobile{display:none}
@media(max-width:1050px){nav{display:none}.features{grid-template-columns:repeat(2,1fr)}.categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}.search{margin-left:auto}.deal{grid-template-columns:1fr}.deal-img{min-height:270px}}
@media(max-width:700px){.topbar .container{justify-content:center}.topbar span:last-child{display:none}.head{height:64px;gap:8px}.search{width:auto;flex:1;min-width:0}.user{display:none}.hero,.hero .container{min-height:420px}.hero h1{font-size:39px}.section{padding:40px 0}.features,.products{grid-template-columns:1fr 1fr}.categories{grid-template-columns:repeat(2,1fr)}.deal-copy{padding:28px}.deal-copy h2{font-size:30px}.news{display:block;padding:25px}.news form{width:100%;margin-top:18px}.foot{grid-template-columns:1fr 1fr}.hero-actions .btn{width:100%;justify-content:center}.pimg{height:190px}}
@media(max-width:430px){.container{padding:0 14px}.features,.products{gap:10px}.pimg{height:160px}.pbody{padding:11px}.pbody h3{font-size:13px}.pbody .price strong{font-size:15px}.pfooter{padding:0 11px 11px}.add{font-size:11px}.quick{width:36px}.hero h1{font-size:32px}.modal{padding:25px 20px}}
</style>
</head>
<body>

<div class="topbar"><div class="container"><span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over ₹999</span><span>Secure checkout · Easy returns · Demo store</span></div></div>

<header>
  <div class="container head">
    <a class="logo" href="#">Vara<span>Cart</span></a>
    <nav>
      <a class="active" href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Shop</a><a href="#deals">Deals</a><a href="#about">About</a>
    </nav>
    <div class="search"><i class="fa-solid fa-magnifying-glass"></i><input id="search" placeholder="Search products..."></div>
    <div class="actions">
      <button class="icon" id="wishTop"><i class="fa-regular fa-heart"></i></button>
      <button class="icon" id="cartOpen"><i class="fa-solid fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
      <div class="user" id="userChip"><div class="avatar">A</div><span>admin</span></div>
    </div>
  </div>
</header>

<main id="home">
<section class="hero">
  <div class="container"><div class="hero-copy">
    <span class="eyebrow"><i class="fa-solid fa-sparkles"></i>&nbsp; NEW SEASON COLLECTION</span>
    <h1>Everything you want. One beautiful store.</h1>
    <p>Discover fashion, accessories, travel gear and collectibles in a polished e-commerce experience built as a fully interactive front-end demo.</p>
    <div class="hero-actions"><button class="btn light" onclick="document.querySelector('#products').scrollIntoView()">Shop collection <i class="fa-solid fa-arrow-right"></i></button><button class="btn white-outline" onclick="document.querySelector('#categories').scrollIntoView()">Explore categories</button></div>
  </div></div>
</section>

<section class="section"><div class="container">
  <div class="features">
    <div class="feature"><i class="fa-solid fa-truck-fast"></i><div><b>Fast delivery</b><span>2–5 business days</span></div></div>
    <div class="feature"><i class="fa-solid fa-shield-halved"></i><div><b>Secure payments</b><span>Protected checkout</span></div></div>
    <div class="feature"><i class="fa-solid fa-rotate-left"></i><div><b>Easy returns</b><span>7-day return window</span></div></div>
    <div class="feature"><i class="fa-solid fa-headset"></i><div><b>Support 24/7</b><span>We're here to help</span></div></div>
  </div>
</div></section>

<section class="section" id="categories"><div class="container">
  <div class="section-head"><div><h2>Shop by category</h2><p>Find something made for you.</p></div><a class="link" href="#products">View all <i class="fa-solid fa-arrow-right"></i></a></div>
  <div class="categories" id="categoriesGrid"></div>
</div></section>

<section class="section" id="products"><div class="container">
  <div class="section-head"><div><h2>Trending products</h2><p id="resultText">Popular picks customers are loving.</p></div><select id="sort" style="padding:10px 12px;border:1px solid var(--line);border-radius:10px;background:#fff"><option value="featured">Featured</option><option value="low">Price: Low to High</option><option value="high">Price: High to Low</option></select></div>
  <div class="products" id="productsGrid"></div>
</div></section>

<section class="section" id="deals"><div class="container">
  <div class="section-head"><div><h2>Limited-time deal</h2><p>Grab today's featured bundle before it expires.</p></div></div>
  <div class="deal"><div class="deal-img"></div><div class="deal-copy">
    <span class="eyebrow">WEEKEND SPECIAL · 35% OFF</span><h2>Everyday Essentials Box</h2><p>A curated bundle with premium apparel, travel accessories and a surprise collectible.</p>
    <div class="deal-price">₹2,599 <del>₹3,999</del></div>
    <div class="timer"><div class="time"><b id="dd">00</b><small>Days</small></div><div class="time"><b id="hh">00</b><small>Hours</small></div><div class="time"><b id="mm">00</b><small>Mins</small></div><div class="time"><b id="ss">00</b><small>Secs</small></div></div>
    <button class="btn primary" onclick="addDeal()">Add deal to cart <i class="fa-solid fa-cart-plus"></i></button>
  </div></div>
</div></section>

<section class="section" id="about"><div class="container">
  <div class="news"><div><h2>Get drops & offers in your inbox</h2><p>Weekly product launches, exclusive offers and store updates.</p></div><form id="newsletter"><input type="email" id="email" placeholder="Email address" required><button class="btn primary">Subscribe</button></form></div>
</div></section>
</main>

<footer><div class="container">
  <div class="foot"><div><div class="logo">Vara<span>Cart</span></div><p style="margin-top:10px;max-width:330px">A modern e-commerce front-end demo with login, search, wishlist, product catalog, cart and checkout interactions.</p></div>
  <div><h4>Shop</h4><a href="#products">All products</a><a href="#categories">Categories</a><a href="#deals">Deals</a></div>
  <div><h4>Help</h4><a href="#">Shipping</a><a href="#">Returns</a><a href="#">Contact</a></div>
  <div><h4>Company</h4><a href="#about">About us</a><a href="#">Privacy</a><a href="#">Terms</a></div></div>
  <div class="copyright">© <span id="year"></span> VaraCart Demo · Front-end only · No real payments are processed.</div>
</div></footer>

<div class="overlay" id="loginOverlay">
  <div class="modal">
    <button class="close" id="loginClose" aria-label="Close"><i class="fa-solid fa-xmark"></i></button>
    <div class="modal-logo"><i class="fa-solid fa-bag-shopping"></i></div>
    <h2>Welcome to VaraCart</h2>
    <p>Sign in to continue to the store.</p>
    <div class="login-note"><b>Demo login</b><br>Username: <b>admin</b> · Password: <b>1062</b></div>
    <form id="loginForm">
      <div class="field"><label>Username</label><input id="username" autocomplete="username" placeholder="Enter username" required></div>
      <div class="field"><label>Password</label><input id="password" type="password" autocomplete="current-password" placeholder="Enter password" required></div>
      <button class="btn primary login-btn">Login to store <i class="fa-solid fa-arrow-right"></i></button>
      <div class="error" id="loginError">Invalid username or password.</div>
    </form>
  </div>
</div>

<aside class="drawer" id="drawer">
  <div class="drawer-head"><h2>Your cart</h2><button class="icon" id="cartClose"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-foot"><div class="subtotal"><span>Subtotal</span><span id="subtotal">₹0</span></div><button class="btn primary" style="width:100%;justify-content:center" id="checkout">Proceed to checkout <i class="fa-solid fa-arrow-right"></i></button></div>
</aside>

<div class="toast" id="toast"></div>

<script>
const PRODUCTS=[
{id:1,name:"Urban Essential Oversized Tee",cat:"Apparel",price:899,old:1199,rating:4.8,reviews:128,badge:"Bestseller",img:"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=85"},
{id:2,name:"Premium Leather Backpack",cat:"Travel",price:2199,old:2999,rating:4.7,reviews:94,badge:"Sale",img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"},
{id:3,name:"Minimal Watch — Silver",cat:"Accessories",price:3299,old:3999,rating:4.9,reviews:76,badge:"New",img:"https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=800&q=85"},
{id:4,name:"Classic Running Sneakers",cat:"Footwear",price:2799,old:3499,rating:4.6,reviews:201,badge:"Popular",img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"},
{id:5,name:"Ceramic Aroma Diffuser",cat:"Home",price:1299,old:1599,rating:4.5,reviews:58,badge:"",img:"https://images.unsplash.com/photo-1603006905003-be475563bc59?auto=format&fit=crop&w=800&q=85"},
{id:6,name:"Classic Sunglasses",cat:"Accessories",price:1499,old:1999,rating:4.7,reviews:143,badge:"Sale",img:"https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=85"},
{id:7,name:"Explorer Field Jacket",cat:"Apparel",price:3899,old:4499,rating:4.8,reviews:67,badge:"New",img:"https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=800&q=85"},
{id:8,name:"Everyday Crossbody Bag",cat:"Bags",price:1699,old:2199,rating:4.6,reviews:89,badge:"",img:"https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85"}
];
const CATS=[["Apparel","fa-shirt"],["Footwear","fa-shoe-prints"],["Accessories","fa-gem"],["Travel","fa-suitcase-rolling"],["Home","fa-house"],["Bags","fa-bag-shopping"]];
let cart=JSON.parse(localStorage.getItem("varacart")||"[]"), wishes=new Set(JSON.parse(localStorage.getItem("varawishes")||"[]"));
const $=id=>document.getElementById(id), money=n=>"₹"+n.toLocaleString("en-IN");
function toast(t){$("toast").textContent=t;$("toast").classList.add("show");clearTimeout(window.tt);window.tt=setTimeout(()=>$("toast").classList.remove("show"),2200)}
function renderCats(){ $("categoriesGrid").innerHTML=CATS.map(c=>`<div class="cat" onclick="filterCat('${c[0]}')"><div class="cat-icon"><i class="fa-solid ${c[1]}"></i></div><b>${c[0]}</b><small>${PRODUCTS.filter(p=>p.cat===c[0]).length} products</small></div>`).join("")}
function renderProducts(list=PRODUCTS){
 $("productsGrid").innerHTML=list.length?list.map(p=>`<article class="product">
 <div class="pimg"><img src="${p.img}" alt="${p.name}" loading="lazy">${p.badge?`<span class="pill ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:""}<button class="wish ${wishes.has(p.id)?"active":""}" onclick="toggleWish(${p.id})"><i class="fa-${wishes.has(p.id)?"solid":"regular"} fa-heart"></i></button></div>
 <div class="pbody"><div class="category">${p.cat}</div><h3>${p.name}</h3><div class="rating">★★★★★ <span>${p.rating} (${p.reviews})</span></div><div class="price"><strong>${money(p.price)}</strong><span class="old">${money(p.old)}</span></div></div>
 <div class="pfooter"><button class="add" onclick="add(${p.id})"><i class="fa-solid fa-plus"></i> Add to cart</button><button class="quick" onclick="quick(${p.id})"><i class="fa-solid fa-eye"></i></button></div></article>`).join(""):`<div style="grid-column:1/-1;text-align:center;padding:60px;color:var(--muted)">No products found.</div>`;
 $("resultText").textContent=list.length?`${list.length} products available`:"Try another search term.";
}
function filterCat(cat){$("search").value=cat;applyFilter();$("products").scrollIntoView({behavior:"smooth"})}
function applyFilter(){let q=$("search").value.toLowerCase().trim(),list=PRODUCTS.filter(p=>(p.name+" "+p.cat).toLowerCase().includes(q));let s=$("sort").value;if(s==="low")list.sort((a,b)=>a.price-b.price);if(s==="high")list.sort((a,b)=>b.price-a.price);renderProducts(list)}
function add(id){let item=cart.find(x=>x.id===id);item?item.qty++:cart.push({id,qty:1});save();toast("Added to cart");openCart()}
function addDeal(){cart.push({id:999,qty:1,deal:true,name:"Everyday Essentials Box",price:2599,img:"https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=300&q=80"});save();toast("Deal added to cart");openCart()}
function save(){localStorage.setItem("varacart",JSON.stringify(cart));localStorage.setItem("varawishes",JSON.stringify([...wishes]));renderCart();$("cartCount").textContent=cart.reduce((a,x)=>a+x.qty,0)}
function toggleWish(id){wishes.has(id)?wishes.delete(id):wishes.add(id);save();renderProducts(PRODUCTS);toast(wishes.has(id)?"Added to wishlist":"Removed from wishlist")}
function quick(id){let p=PRODUCTS.find(x=>x.id===id);toast(`${p.name} · ${money(p.price)}`)}
function renderCart(){if(!cart.length){$("cartItems").innerHTML='<div style="text-align:center;padding:60px 20px;color:var(--muted)"><i class="fa-solid fa-bag-shopping" style="font-size:35px;margin-bottom:12px"></i><br>Your cart is empty.</div>'}else{$("cartItems").innerHTML=cart.map((x,i)=>{let p=x.deal?x:PRODUCTS.find(p=>p.id===x.id);return `<div class="cart-row"><img src="${p.img}"><div style="flex:1"><h4>${p.name}</h4><p>${money(p.price)}</p><div class="qty"><button onclick="changeQty(${i},-1)">−</button><b>${x.qty}</b><button onclick="changeQty(${i},1)">+</button><button onclick="removeItem(${i})" style="margin-left:auto;color:var(--red)">Remove</button></div></div></div>`}).join("")}$("subtotal").textContent=money(cart.reduce((a,x)=>a+(x.deal?2599:PRODUCTS.find(p=>p.id===x.id).price)*x.qty,0))}
function changeQty(i,d){cart[i].qty+=d;if(cart[i].qty<=0)cart.splice(i,1);save()}
function removeItem(i){cart.splice(i,1);save()}
function openCart(){$("drawer").classList.add("open")}function closeCart(){$("drawer").classList.remove("open")}
$("search").addEventListener("input",applyFilter);$("sort").addEventListener("change",applyFilter);$("cartOpen").onclick=openCart;$("cartClose").onclick=closeCart;
$("wishTop").onclick=()=>{let list=PRODUCTS.filter(p=>wishes.has(p.id));$("search").value="";renderProducts(list);$("products").scrollIntoView({behavior:"smooth"});toast(list.length?`${list.length} wishlist item${list.length>1?"s":""}`:"Wishlist is empty")};
$("checkout").onclick=()=>cart.length?(toast("Demo checkout opened — no real payment is processed."),closeCart()):toast("Your cart is empty.");
$("newsletter").onsubmit=e=>{e.preventDefault();toast("Thanks! You're subscribed.");$("email").value=""};
$("year").textContent=new Date().getFullYear();

function showLogin(){ $("loginOverlay").classList.remove("hidden"); setTimeout(()=>$("username").focus(),100)}
function hideLogin(){ $("loginOverlay").classList.add("hidden") }
$("loginClose").onclick=()=>{toast("Please log in to continue.");showLogin()};
$("loginForm").onsubmit=e=>{e.preventDefault();let u=$("username").value.trim(),p=$("password").value;if(u==="admin"&&p==="1062"){hideLogin();$("userChip").innerHTML='<div class="avatar">A</div><span>admin</span>';toast("Welcome back, admin!")}else{$("loginError").style.display="block"}};
$("loginOverlay").addEventListener("click",e=>{if(e.target===$("loginOverlay"))$("username").focus()});
function tick(){let end=window.dealEnd||(window.dealEnd=Date.now()+3*24*60*60*1000),d=Math.max(0,end-Date.now());$("dd").textContent=Math.floor(d/86400000).toString().padStart(2,"0");$("hh").textContent=Math.floor(d%86400000/3600000).toString().padStart(2,"0");$("mm").textContent=Math.floor(d%3600000/60000).toString().padStart(2,"0");$("ss").textContent=Math.floor(d%60000/1000).toString().padStart(2,"0")}setInterval(tick,1000);tick();
renderCats();renderProducts();renderCart();$("cartCount").textContent=cart.reduce((a,x)=>a+x.qty,0);showLogin();
</script>
</body>
</html>
