<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Premium E‑Commerce Experience</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- AOS Library for scroll animations -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #fefefe;
            color: #0a1e2f;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        /* premium variables */
        :root {
            --brand-dark: #0B1C2F;
            --brand-accent: #ff6b4a;
            --brand-accent-light: #ff8a6f;
            --brand-blue: #2a7de1;
            --surface-light: #f8fafd;
            --glass-bg: rgba(255, 255, 255, 0.92);
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.04);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 30px 40px -18px rgba(0, 0, 0, 0.15);
            --card-radius: 28px;
            --transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #eef2f5;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--brand-accent);
            border-radius: 12px;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* header glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.04);
            transition: var(--transition);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0B1C2F 0%, #ff6b4a 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand span {
            background: none;
            color: #ff6b4a;
            -webkit-background-clip: unset;
        }

        nav.main-nav ul {
            display: flex;
            gap: 20px;
            list-style: none;
        }

        nav.main-nav li a {
            font-weight: 500;
            padding: 8px 12px;
            border-radius: 40px;
            transition: var(--transition);
            font-size: 0.95rem;
        }

        nav.main-nav li a:hover {
            background: rgba(255, 107, 74, 0.08);
            color: var(--brand-accent);
        }

        .search-wrapper {
            background: white;
            border-radius: 60px;
            padding: 5px 16px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
            border: 1px solid #eef2f0;
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            padding: 10px 0;
            font-size: 0.9rem;
            width: 200px;
            outline: none;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            cursor: pointer;
            transition: var(--transition);
            padding: 8px;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: #f0f3f8;
            color: var(--brand-accent);
        }

        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -5px;
            right: -6px;
            background: var(--brand-accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* hero section with modern curved */
        .hero-modern {
            background: linear-gradient(125deg, #fdf8f5 0%, #fef3ee 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 32px;
            position: relative;
            overflow: hidden;
        }
        .hero-modern::after {
            content: "";
            position: absolute;
            top: -40%;
            right: -20%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(255,107,74,0.12) 0%, rgba(255,107,74,0) 70%);
            border-radius: 50%;
            pointer-events: none;
        }
        .hero-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            padding: 60px 0 60px;
        }
        .hero-content h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 52px;
            font-weight: 700;
            line-height: 1.2;
            background: linear-gradient(140deg, #0B1C2F, #c75127);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
        }
        .hero-badge {
            background: rgba(255,107,74,0.12);
            color: #ff6b4a;
            display: inline-block;
            padding: 5px 12px;
            border-radius: 60px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 18px;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            margin-top: 32px;
        }
        .btn-primary {
            background: #0B1C2F;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            transition: 0.2s;
            cursor: pointer;
            box-shadow: 0 8px 18px rgba(11,28,47,0.1);
        }
        .btn-primary:hover {
            background: #ff6b4a;
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid #0B1C2F;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            transition: 0.2s;
            cursor: pointer;
        }
        .btn-outline:hover {
            background: #0B1C2F;
            color: white;
        }

        /* category cards premium */
        .section-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 12px;
            letter-spacing: -0.02em;
        }
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 24px;
            margin: 32px 0;
        }
        .category-card {
            background: white;
            border-radius: 32px;
            padding: 28px 16px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            transition: all 0.25s ease;
            cursor: pointer;
            border: 1px solid rgba(0,0,0,0.02);
        }
        .category-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            background: #ffffff;
            border-color: rgba(255,107,74,0.2);
        }
        .category-icon {
            font-size: 42px;
            color: #ff6b4a;
            margin-bottom: 16px;
        }

        /* product grid premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 28px;
        }
        .product-card {
            background: white;
            border-radius: 32px;
            overflow: hidden;
            box-shadow: 0 12px 24px -12px rgba(0, 0, 0, 0.06);
            transition: all 0.3s ease;
            border: 1px solid #f0f2f5;
        }
        .product-card:hover {
            transform: scale(1.01) translateY(-6px);
            box-shadow: 0 30px 35px -18px rgba(0, 0, 0, 0.18);
        }
        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: 0.4s;
        }
        .product-body {
            padding: 18px;
        }
        .price {
            font-weight: 800;
            font-size: 1.35rem;
            color: #ff6b4a;
        }
        .old-price {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: #8b9eb0;
            margin-left: 8px;
        }
        .add-action {
            background: #f8f9fc;
            border: none;
            width: 100%;
            padding: 12px;
            font-weight: 600;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
        }
        .add-action:hover {
            background: #0B1C2F;
            color: white;
        }

        /* flash sale premium card */
        .flash-sale-card {
            background: linear-gradient(115deg, #0B1C2F 0%, #162b3c 100%);
            border-radius: 48px;
            display: flex;
            flex-wrap: wrap;
            gap: 24px;
            overflow: hidden;
            margin: 48px 0;
            align-items: center;
        }
        .flash-img {
            flex: 1;
            min-width: 260px;
            height: 300px;
            object-fit: cover;
        }
        .flash-content {
            flex: 1.5;
            padding: 36px 32px;
            color: white;
        }
        .timer-stack {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }
        .timer-block {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(8px);
            border-radius: 24px;
            padding: 12px 8px;
            min-width: 80px;
            text-align: center;
            font-weight: 700;
            font-size: 26px;
        }

        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 16px 4px 28px;
        }
        .testimonial-item {
            min-width: 320px;
            background: white;
            border-radius: 32px;
            padding: 28px;
            box-shadow: var(--shadow-sm);
        }
        .newsletter-modern {
            background: linear-gradient(125deg, #f4f9ff, #fff5f0);
            border-radius: 64px;
            padding: 56px 32px;
            text-align: center;
        }
        footer {
            background: #0B1C2F;
            margin-top: 72px;
            border-radius: 48px 48px 0 0;
            color: #cddfe7;
        }
        @media (max-width: 800px) {
            .hero-flex { flex-direction: column; text-align: center; }
            .btn-group { justify-content: center; }
            .header-inner { flex-wrap: wrap; }
            nav.main-nav { display: none; }
            .mobile-toggle-block { display: block; }
            .container { padding: 0 20px; }
            .hero-content h1 { font-size: 38px; }
        }
        .mobile-toggle-block {
            display: none;
            background: none;
            border: none;
            font-size: 26px;
            cursor: pointer;
        }
        .mobile-menu-drawer {
            display: none;
            background: white;
            padding: 20px;
            border-radius: 28px;
            margin-top: 8px;
        }
        .badge-hot {
            background: #ff6b4a;
            color: white;
            font-size: 11px;
            font-weight: 700;
            border-radius: 30px;
            padding: 4px 10px;
            display: inline-block;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 12px;">
            <button class="mobile-toggle-block" id="menuToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand">NEXUS<span>SHOP</span></div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#products-section">Products</a></li>
                <li><a href="#deals">Flash Sale</a></li>
                <li><a href="#testimonial-sec">Reviews</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 12px;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color:#9aaebf;"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <button class="icon-btn" id="cartIconBtn"><i class="fas fa-shopping-bag"></i><span class="cart-count" id="cartCountNav">0</span></button>
        </div>
    </div>
    <div class="mobile-menu-drawer" id="mobileDrawer">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 18px;">
            <li><a href="#home">Home</a></li>
            <li><a href="#products-section">Products</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#testimonial-sec">Reviews</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero section -->
    <section class="hero-modern" id="home">
        <div class="container hero-flex">
            <div class="hero-content" data-aos="fade-right">
                <div class="hero-badge"><i class="fas fa-gem"></i> Limited Edition</div>
                <h1>Elevate your style.<br>Premium collection.</h1>
                <p style="font-size: 1.1rem; color: #3e5a6b; max-width: 500px;">Discover curated luxury & tech essentials — crafted for the modern connoisseur.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="shopNowBtn">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline" id="exploreBtn">Explore Drops <i class="fas fa-sparkle"></i></button>
                </div>
            </div>
            <div data-aos="fade-left" style="flex:0.9; text-align:center;">
                <img src="https://images.unsplash.com/photo-1556742031-c6961e8560b0?auto=format&fit=crop&w=600&q=80" alt="hero visual" style="max-width: 100%; border-radius: 48px; box-shadow: 0 40px 40px -16px rgba(0,0,0,0.2);">
            </div>
        </div>
    </section>

    <!-- Categories section -->
    <div class="container" data-aos="fade-up">
        <div class="section-title">Shop by Category <span style="font-weight:400; font-size:1rem;">✨</span></div>
        <div class="categories-grid" id="categoriesDynamic"></div>
    </div>

    <!-- Products grid -->
    <div class="container" id="products-section" data-aos="fade-up">
        <div class="section-title">Trending 🔥 <span style="font-size:1rem;">most wanted</span></div>
        <div class="products-grid" id="productsContainer"></div>
    </div>

    <!-- Flash sale (Deal) -->
    <div class="container" id="deals">
        <div class="flash-sale-card" data-aos="zoom-in">
            <img class="flash-img" src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="MacBook Pro deal">
            <div class="flash-content">
                <span class="badge-hot" style="background:#ffd966; color:#0B1C2F;"><i class="fas fa-bolt"></i> FLASH SALE</span>
                <h2 style="font-size: 32px; margin: 16px 0;">MacBook Pro M3 Pro</h2>
                <p>Next‑level performance — save up to 18% today.</p>
                <div class="timer-stack">
                    <div class="timer-block"><span id="days">00</span><div style="font-size:12px;">Days</div></div>
                    <div class="timer-block"><span id="hours">00</span><div>Hrs</div></div>
                    <div class="timer-block"><span id="minutes">00</span><div>Min</div></div>
                    <div class="timer-block"><span id="seconds">00</span><div>Sec</div></div>
                </div>
                <div><span class="price" style="font-size: 34px;color:#ffa981;">$1,299</span> <span style="text-decoration:line-through; margin-left:12px;">$1,599</span></div>
                <button id="flashDealBtn" class="btn-primary" style="margin-top: 24px; background:#ff6b4a;">Grab Deal →</button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container" id="testimonial-sec" data-aos="fade-up">
        <div class="section-title">Customer Love 💬</div>
        <div class="testimonial-scroll">
            <div class="testimonial-item"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                <p style="margin:12px 0;">“The design and speed are incredible. My new favorite store.”</p><strong>— Emma R.</strong>
            </div>
            <div class="testimonial-item"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                <p>“World-class packaging and lightning delivery. 10/10”</p><strong>— David K.</strong>
            </div>
            <div class="testimonial-item"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                <p>“Amazing support and curated selections. Will buy again.”</p><strong>— Sophia L.</strong>
            </div>
        </div>
    </div>

    <!-- Newsletter -->
    <div class="container">
        <div class="newsletter-modern" data-aos="flip-up">
            <i class="fas fa-envelope-open-text" style="font-size: 42px; color:#ff6b4a;"></i>
            <h3 style="font-size: 28px;">Insider access</h3>
            <p style="margin-bottom: 20px;">Get 10% off & early access to drops.</p>
            <form id="newsSubmit" style="display:flex; gap:12px; justify-content: center; flex-wrap:wrap;">
                <input type="email" id="newsEmail" placeholder="you@example.com" style="padding:14px 22px; border-radius: 60px; border: 1px solid #ddd; width: 280px;">
                <button class="btn-primary" style="background:#0B1C2F;">Subscribe <i class="fas fa-paper-plane"></i></button>
            </form>
            <div id="newsMsg" style="margin-top: 14px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="padding: 48px 0 32px; display: flex; justify-content: space-between; flex-wrap:wrap; gap: 32px;">
        <div><strong style="font-size: 22px;">NEXUSSHOP</strong><p style="margin-top: 12px;">Luxury, tech & lifestyle — reimagined.</p></div>
        <div><h4>Explore</h4><p>New arrivals<br>Best sellers<br>Gift cards</p></div>
        <div><h4>Support</h4><p>FAQs<br>Returns<br>Track order</p></div>
    </div>
    <div class="container" style="border-top: 1px solid #2c4458; padding: 20px 0; text-align: center;">© 2026 NexusShop — All rights reserved.</div>
</footer>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init({ duration: 700, once: true, offset: 20 });
    // ---------- DATA -------------
    const categoriesData = [
        { name: "Smartphones", icon: "fa-mobile-alt", color: "#ff6b4a" },
        { name: "Laptops", icon: "fa-laptop-code", color: "#2a7de1" },
        { name: "Luxury Fashion", icon: "fa-crown", color: "#d4af37" },
        { name: "Audio & Hi-Fi", icon: "fa-headphones", color: "#8b5cf6" },
        { name: "Sneakers", icon: "fa-shoe-prints", color: "#f97316" },
        { name: "Watches", icon: "fa-clock", color: "#0f172a" }
    ];
    const productList = [
        { id: 101, name: "iPhone 16 Pro", price: 1199, oldPrice: 1299, rating: 5, image: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", tag: "New" },
        { id: 102, name: "Samsung Galaxy S24 Ultra", price: 1099, oldPrice: 1249, rating: 5, image: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=600&q=80", tag: "Sale" },
        { id: 103, name: "Dyson Supersonic", price: 399, oldPrice: 499, rating: 4, image: "https://images.unsplash.com/photo-1585251259349-aead8e6f2253?auto=format&fit=crop&w=600&q=80" },
        { id: 104, name: "Sony WH-1000XM6", price: 379, oldPrice: 449, rating: 5, image: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80" },
        { id: 105, name: "Balenciaga Sneakers", price: 850, oldPrice: 1240, rating: 4, image: "https://images.unsplash.com/photo-1560769629-975ec94e6a86?auto=format&fit=crop&w=600&q=80", tag: "Limited" },
        { id: 106, name: "Arc'teryx Jacket", price: 420, rating: 5, image: "https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=600&q=80" }
    ];
    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById("cartCountNav");
    function updateCartUI() { cartCountSpan.innerText = cartItemsCount; }
    function addToCartById(id) {
        cartItemsCount++;
        updateCartUI();
        const btn = document.querySelector(`.add-prod-btn[data-id='${id}']`);
        if(btn) {
            let original = btn.innerHTML;
            btn.innerHTML = "✓ Added";
            setTimeout(() => { btn.innerHTML = original; }, 1000);
        }
        // micro animation
    }

    function renderCategories() {
        const container = document.getElementById("categoriesDynamic");
        container.innerHTML = categoriesData.map(c => `
            <div class="category-card" data-cat-name="${c.name}">
                <div class="category-icon"><i class="fas ${c.icon}" style="color:${c.color}"></i></div>
                <h4>${c.name}</h4>
                <p style="font-size:13px; margin-top:6px; opacity:0.7;">Shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(el => {
            el.addEventListener('click', () => {
                const catName = el.getAttribute('data-cat-name');
                const searchBox = document.getElementById("globalSearch");
                if(searchBox) searchBox.value = catName;
                filterProductsByQuery(catName);
                document.getElementById("products-section").scrollIntoView({ behavior: "smooth" });
            });
        });
    }

    function filterProductsByQuery(query) {
        if(!query || query.trim() === "") { renderProducts(productList); return; }
        const filtered = productList.filter(p => p.name.toLowerCase().includes(query.toLowerCase()));
        renderProducts(filtered);
    }

    function renderProducts(prods) {
        const grid = document.getElementById("productsContainer");
        if(!grid) return;
        grid.innerHTML = prods.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.image}" alt="${p.name}" loading="lazy">
                <div class="product-body">
                    <div style="display: flex; justify-content: space-between;">
                        <h3 style="font-size: 1.2rem;">${p.name}</h3>
                        ${p.tag ? `<span class="badge-hot">${p.tag}</span>` : ''}
                    </div>
                    <div style="display: flex; align-items: baseline; gap:8px; margin: 12px 0;">
                        <span class="price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div><i class="fas fa-star" style="color:#f5b042;"></i> ${p.rating}/5</div>
                    <button class="add-action add-prod-btn" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to Bag</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-prod-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.getAttribute('data-id'));
                addToCartById(id);
            });
        });
    }

    // search listener
    document.getElementById("globalSearch").addEventListener("input", (e) => {
        filterProductsByQuery(e.target.value);
    });
    document.getElementById("shopNowBtn").addEventListener("click", () => {
        document.getElementById("products-section").scrollIntoView({ behavior: "smooth" });
    });
    document.getElementById("exploreBtn").addEventListener("click", () => {
        document.getElementById("deals").scrollIntoView({ behavior: "smooth" });
    });
    // flash deal + cart
    document.getElementById("flashDealBtn").addEventListener("click", () => {
        cartItemsCount++;
        updateCartUI();
        alert("🔥 MacBook Pro added to cart with flash discount!");
    });
    document.getElementById("cartIconBtn").addEventListener("click", () => {
        alert(`✨ Your cart has ${cartItemsCount} item(s). Proceed to checkout (demo).`);
    });
    // newsletter
    document.getElementById("newsSubmit").addEventListener("submit", (e) => {
        e.preventDefault();
        let email = document.getElementById("newsEmail").value.trim();
        let msgDiv = document.getElementById("newsMsg");
        if(email && email.includes("@")) {
            msgDiv.innerHTML = "🎉 Thanks! Your 10% coupon: WELCOME10";
            msgDiv.style.color = "#ff6b4a";
            document.getElementById("newsEmail").value = "";
        } else {
            msgDiv.innerHTML = "Please enter a valid email.";
            msgDiv.style.color = "#c2410c";
        }
        setTimeout(() => { msgDiv.innerHTML = ""; }, 3000);
    });
    // countdown timer
    function startTimer() {
        const targetTime = new Date().getTime() + (32 * 3600 * 1000) + (15 * 60000);
        const interval = setInterval(() => {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff < 0) { clearInterval(interval); document.getElementById("days").innerText = "00"; document.getElementById("hours").innerText = "00"; document.getElementById("minutes").innerText = "00"; document.getElementById("seconds").innerText = "00"; return; }
            const days = Math.floor(diff / (1000*3600*24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById("days").innerText = days < 10 ? "0"+days : days;
            document.getElementById("hours").innerText = hrs < 10 ? "0"+hrs : hrs;
            document.getElementById("minutes").innerText = mins < 10 ? "0"+mins : mins;
            document.getElementById("seconds").innerText = secs < 10 ? "0"+secs : secs;
        }, 1000);
    }
    startTimer();
    // init mobile drawer
    const toggleBtn = document.getElementById("menuToggleBtn");
    const drawer = document.getElementById("mobileDrawer");
    if(toggleBtn) {
        toggleBtn.addEventListener("click", () => {
            if(drawer.style.display === "block") drawer.style.display = "none";
            else drawer.style.display = "block";
        });
        window.addEventListener("resize", ()=>{
            if(window.innerWidth > 800) drawer.style.display = "none";
        });
    }
    renderCategories();
    renderProducts(productList);
    updateCartUI();
</script>
</body>
</html>
