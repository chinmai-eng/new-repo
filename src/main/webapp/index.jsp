<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Premium E‑Commerce with All Features</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            transition: background-color 0.3s ease, color 0.3s ease;
            overflow-x: hidden;
        }

        /* Dark Mode Variables */
        body.light-mode {
            --bg-primary: #fefefe;
            --bg-secondary: #f8fafd;
            --text-primary: #0a1e2f;
            --text-secondary: #3e5a6b;
            --card-bg: #ffffff;
            --border-color: #eef2f0;
            --shadow: 0 12px 30px rgba(0, 0, 0, 0.04);
            --shadow-hover: 0 30px 40px -18px rgba(0, 0, 0, 0.15);
        }

        body.dark-mode {
            --bg-primary: #121212;
            --bg-secondary: #1e1e1e;
            --text-primary: #e4e4e4;
            --text-secondary: #a0a0a0;
            --card-bg: #2d2d2d;
            --border-color: #3d3d3d;
            --shadow: 0 12px 30px rgba(0, 0, 0, 0.3);
            --shadow-hover: 0 30px 40px -18px rgba(0, 0, 0, 0.4);
        }

        body {
            background: var(--bg-primary);
            color: var(--text-primary);
        }

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
        }
        ::-webkit-scrollbar-thumb {
            background: #ff6b4a;
            border-radius: 12px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Header Glass */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(var(--bg-primary), 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-color);
            transition: all 0.3s;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-size: 26px;
            font-weight: 700;
            background: linear-gradient(135deg, #ff6b4a, #ff8a6f);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .search-wrapper {
            background: var(--card-bg);
            border-radius: 60px;
            padding: 5px 16px;
            border: 1px solid var(--border-color);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            padding: 10px 0;
            outline: none;
            color: var(--text-primary);
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            cursor: pointer;
            padding: 8px;
            border-radius: 50%;
            transition: 0.2s;
            color: var(--text-primary);
        }

        .icon-btn:hover {
            background: rgba(255, 107, 74, 0.1);
            color: #ff6b4a;
        }

        .cart, .wishlist-icon {
            position: relative;
        }
        .cart-count, .wishlist-count {
            position: absolute;
            top: -5px;
            right: -6px;
            background: #ff6b4a;
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

        /* Dark Mode Toggle */
        .theme-toggle {
            background: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 50px;
            padding: 5px 10px;
            cursor: pointer;
            display: flex;
            gap: 8px;
        }

        /* Filters Bar */
        .filters-bar {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
            margin: 24px 0;
            align-items: center;
            background: var(--bg-secondary);
            padding: 16px 20px;
            border-radius: 60px;
        }
        .filter-select, .price-range-input {
            padding: 8px 16px;
            border-radius: 40px;
            border: 1px solid var(--border-color);
            background: var(--card-bg);
            color: var(--text-primary);
            cursor: pointer;
        }
        .price-range-input {
            width: 120px;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 28px;
        }
        .product-card {
            background: var(--card-bg);
            border-radius: 32px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border: 1px solid var(--border-color);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            cursor: pointer;
        }
        .product-body {
            padding: 18px;
        }
        .price {
            font-weight: 800;
            font-size: 1.35rem;
            color: #ff6b4a;
        }
        .stock-badge {
            display: inline-block;
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 11px;
            font-weight: 600;
            margin-top: 8px;
        }
        .stock-instock { background: #28a74520; color: #28a745; }
        .stock-low { background: #ff980020; color: #ff9800; }
        .stock-out { background: #dc354520; color: #dc3545; }
        .quantity-selector {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 12px 0;
            justify-content: center;
        }
        .qty-btn {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            border: 1px solid var(--border-color);
            background: var(--bg-secondary);
            cursor: pointer;
            font-weight: bold;
        }
        .add-action, .wishlist-btn {
            background: #ff6b4a;
            border: none;
            padding: 10px;
            font-weight: 600;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
            margin-top: 8px;
            color: white;
        }
        .wishlist-btn {
            background: transparent;
            border: 1px solid #ff6b4a;
            color: #ff6b4a;
            margin-top: 4px;
        }
        /* Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.8);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background: var(--card-bg);
            border-radius: 32px;
            max-width: 600px;
            width: 90%;
            padding: 24px;
            position: relative;
        }
        /* Toast */
        .toast {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #28a745;
            color: white;
            padding: 14px 24px;
            border-radius: 50px;
            z-index: 1001;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            animation: slideIn 0.3s ease;
        }
        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
        /* Skeleton */
        .skeleton {
            background: linear-gradient(90deg, var(--border-color) 25%, var(--bg-secondary) 50%, var(--border-color) 75%);
            background-size: 200% 100%;
            animation: shimmer 1.5s infinite;
            border-radius: 32px;
            height: 350px;
        }
        @keyframes shimmer {
            0% { background-position: 200% 0; }
            100% { background-position: -200% 0; }
        }
        .recent-section {
            margin-top: 48px;
            padding: 32px 0;
            border-top: 1px solid var(--border-color);
        }
        .recent-grid {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 16px 0;
        }
        @media (max-width: 800px) {
            .container { padding: 0 20px; }
            .filters-bar { flex-direction: column; align-items: stretch; border-radius: 24px; }
        }
    </style>
</head>
<body class="light-mode">

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="brand">NEXUS<span style="color:#ff6b4a;">SHOP</span></div>
        </div>
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <div class="search-wrapper">
                <i class="fas fa-search"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="theme-toggle" id="themeToggle">
                <i class="fas fa-sun"></i> | <i class="fas fa-moon"></i>
            </div>
            <button class="icon-btn wishlist-icon" id="wishlistIconBtn">
                <i class="far fa-heart"></i>
                <span class="wishlist-count" id="wishlistCountNav">0</span>
            </button>
            <button class="icon-btn cart" id="cartIconBtn">
                <i class="fas fa-shopping-bag"></i>
                <span class="cart-count" id="cartCountNav">0</span>
            </button>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <!-- Filters Bar -->
        <div class="filters-bar">
            <select id="sortSelect" class="filter-select">
                <option value="default">Sort by: Featured</option>
                <option value="price-asc">Price: Low to High</option>
                <option value="price-desc">Price: High to Low</option>
                <option value="rating">Top Rated</option>
            </select>
            <div style="display: flex; gap: 8px; align-items: center;">
                <span>💰 Price: $</span>
                <input type="number" id="minPrice" placeholder="Min" class="price-range-input" value="0">
                <span>-</span>
                <input type="number" id="maxPrice" placeholder="Max" class="price-range-input" value="2000">
                <button id="applyPriceFilter" class="filter-select" style="background:#ff6b4a; color:white;">Apply</button>
            </div>
        </div>

        <!-- Products Grid with Skeleton -->
        <div class="products-grid" id="productsContainer">
            <div class="skeleton"></div><div class="skeleton"></div><div class="skeleton"></div><div class="skeleton"></div>
        </div>

        <!-- Recently Viewed -->
        <div class="recent-section" id="recentSection" style="display: none;">
            <h3><i class="fas fa-history"></i> Recently Viewed</h3>
            <div class="recent-grid" id="recentGrid"></div>
        </div>
    </div>
</main>

<!-- Quick View Modal -->
<div id="quickViewModal" class="modal">
    <div class="modal-content" id="modalContent"></div>
</div>

<script>
    // ======================== DATA ========================
    let products = [
        { id: 101, name: "iPhone 16 Pro", price: 1199, oldPrice: 1299, rating: 5, stock: 12, image: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", tag: "New" },
        { id: 102, name: "Samsung Galaxy S24 Ultra", price: 1099, oldPrice: 1249, rating: 5, stock: 3, image: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=600&q=80", tag: "Sale" },
        { id: 103, name: "Dyson Supersonic", price: 399, oldPrice: 499, rating: 4, stock: 25, image: "https://images.unsplash.com/photo-1585251259349-aead8e6f2253?auto=format&fit=crop&w=600&q=80" },
        { id: 104, name: "Sony WH-1000XM6", price: 379, oldPrice: 449, rating: 5, stock: 2, image: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80" },
        { id: 105, name: "Balenciaga Sneakers", price: 850, oldPrice: 1240, rating: 4, stock: 7, image: "https://images.unsplash.com/photo-1560769629-975ec94e6a86?auto=format&fit=crop&w=600&q=80", tag: "Limited" },
        { id: 106, name: "Arc'teryx Jacket", price: 420, rating: 5, stock: 0, image: "https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=600&q=80" },
        { id: 107, name: "AirPods Pro 2", price: 249, oldPrice: 299, rating: 5, stock: 18, image: "https://images.unsplash.com/photo-1606841837239-c5a1a4a07af7?auto=format&fit=crop&w=600&q=80" }
    ];

    // State variables
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let wishlist = JSON.parse(localStorage.getItem('wishlist')) || [];
    let recentlyViewed = JSON.parse(localStorage.getItem('recentlyViewed')) || [];
    let currentProducts = [...products];

    // Helper functions
    function showToast(message, type = 'success') {
        const toast = document.createElement('div');
        toast.className = 'toast';
        toast.style.background = type === 'success' ? '#28a745' : '#ff6b4a';
        toast.innerHTML = `<i class="fas ${type === 'success' ? 'fa-check-circle' : 'fa-exclamation-circle'}"></i> ${message}`;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2500);
    }

    function updateCartUI() {
        const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
        document.getElementById('cartCountNav').innerText = totalItems;
        localStorage.setItem('cart', JSON.stringify(cart));
    }

    function updateWishlistUI() {
        document.getElementById('wishlistCountNav').innerText = wishlist.length;
        localStorage.setItem('wishlist', JSON.stringify(wishlist));
    }

    function addToCart(productId, quantity = 1) {
        const product = products.find(p => p.id === productId);
        if (!product || product.stock === 0) {
            showToast(`${product?.name || 'Product'} is out of stock!`, 'error');
            return;
        }
        const existing = cart.find(item => item.id === productId);
        if (existing) {
            existing.quantity += quantity;
        } else {
            cart.push({ id: productId, quantity, name: product.name, price: product.price, image: product.image });
        }
        updateCartUI();
        showToast(`${product.name} added to cart! 🛒`);
    }

    function addToWishlist(productId) {
        const product = products.find(p => p.id === productId);
        if (!wishlist.includes(productId)) {
            wishlist.push(productId);
            updateWishlistUI();
            showToast(`${product.name} added to wishlist ❤️`);
        } else {
            showToast(`${product.name} already in wishlist`, 'error');
        }
    }

    function addToRecentlyViewed(product) {
        recentlyViewed = recentlyViewed.filter(p => p.id !== product.id);
        recentlyViewed.unshift(product);
        if (recentlyViewed.length > 4) recentlyViewed.pop();
        localStorage.setItem('recentlyViewed', JSON.stringify(recentlyViewed));
        renderRecentlyViewed();
    }

    function renderRecentlyViewed() {
        const section = document.getElementById('recentSection');
        const grid = document.getElementById('recentGrid');
        if (recentlyViewed.length === 0) {
            section.style.display = 'none';
            return;
        }
        section.style.display = 'block';
        grid.innerHTML = recentlyViewed.map(p => `
            <div style="min-width: 180px; background: var(--card-bg); border-radius: 20px; padding: 12px; cursor: pointer;" onclick="quickViewProduct(${p.id})">
                <img src="${p.image}" style="width:100%; height:120px; object-fit:cover; border-radius: 16px;">
                <div style="font-weight:600; margin-top:6px;">${p.name}</div>
                <div style="color:#ff6b4a;">$${p.price}</div>
            </div>
        `).join('');
    }

    // Filter, Sort, Search
    function filterAndSortProducts() {
        let filtered = [...products];
        const searchTerm = document.getElementById('globalSearch').value.toLowerCase();
        if (searchTerm) filtered = filtered.filter(p => p.name.toLowerCase().includes(searchTerm));
        
        const minPrice = parseInt(document.getElementById('minPrice').value) || 0;
        const maxPrice = parseInt(document.getElementById('maxPrice').value) || 2000;
        filtered = filtered.filter(p => p.price >= minPrice && p.price <= maxPrice);
        
        const sortBy = document.getElementById('sortSelect').value;
        if (sortBy === 'price-asc') filtered.sort((a,b) => a.price - b.price);
        else if (sortBy === 'price-desc') filtered.sort((a,b) => b.price - a.price);
        else if (sortBy === 'rating') filtered.sort((a,b) => b.rating - a.rating);
        
        currentProducts = filtered;
        renderProducts(filtered);
    }

    function getStockBadge(stock) {
        if (stock === 0) return '<span class="stock-badge stock-out">❌ Out of Stock</span>';
        if (stock < 5) return `<span class="stock-badge stock-low">🔥 Only ${stock} left!</span>`;
        return '<span class="stock-badge stock-instock">✓ In Stock</span>';
    }

    function renderProducts(productList) {
        const container = document.getElementById('productsContainer');
        if (!productList.length) {
            container.innerHTML = '<div style="grid-column:1/-1; text-align:center; padding:60px;">No products found 😢</div>';
            return;
        }
        container.innerHTML = productList.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.image}" alt="${p.name}" onclick="quickViewProduct(${p.id})">
                <div class="product-body">
                    <div style="display: flex; justify-content: space-between;">
                        <h3>${p.name}</h3>
                        ${p.tag ? `<span class="stock-badge stock-instock" style="background:#ff6b4a20;">${p.tag}</span>` : ''}
                    </div>
                    <div class="price">$${p.price} ${p.oldPrice ? `<span class="old-price" style="text-decoration:line-through; font-size:14px;">$${p.oldPrice}</span>` : ''}</div>
                    <div><i class="fas fa-star" style="color:#f5b042;"></i> ${p.rating}/5</div>
                    ${getStockBadge(p.stock)}
                    <div class="quantity-selector">
                        <button class="qty-btn" onclick="event.stopPropagation(); changeQty('${p.id}', -1)">-</button>
                        <span id="qty-${p.id}">1</span>
                        <button class="qty-btn" onclick="event.stopPropagation(); changeQty('${p.id}', 1)">+</button>
                    </div>
                    <button class="add-action" onclick="addToCart(${p.id}, parseInt(document.getElementById('qty-${p.id}').innerText))"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    <button class="wishlist-btn" onclick="addToWishlist(${p.id})"><i class="far fa-heart"></i> Wishlist</button>
                </div>
            </div>
        `).join('');
    }

    window.changeQty = (id, delta) => {
        const span = document.getElementById(`qty-${id}`);
        let val = parseInt(span.innerText);
        val = Math.max(1, val + delta);
        span.innerText = val;
    };

    window.quickViewProduct = (id) => {
        const product = products.find(p => p.id === id);
        addToRecentlyViewed(product);
        const modal = document.getElementById('quickViewModal');
        const modalContent = document.getElementById('modalContent');
        modalContent.innerHTML = `
            <span style="float:right; cursor:pointer; font-size:28px;" onclick="closeModal()">&times;</span>
            <div style="display:flex; gap:20px; flex-wrap:wrap;">
                <img src="${product.image}" style="width:200px; height:200px; object-fit:cover; border-radius:24px;">
                <div>
                    <h2>${product.name}</h2>
                    <div class="price">$${product.price}</div>
                    <div>⭐ ${product.rating}/5</div>
                    ${getStockBadge(product.stock)}
                    <div class="quantity-selector" style="justify-content: flex-start; margin:16px 0;">
                        <button class="qty-btn" id="modalQtyMinus">-</button>
                        <span id="modalQty">1</span>
                        <button class="qty-btn" id="modalQtyPlus">+</button>
                    </div>
                    <button class="add-action" id="modalAddBtn">Add to Cart</button>
                </div>
            </div>
        `;
        modal.style.display = 'flex';
        let qty = 1;
        document.getElementById('modalQtyMinus').onclick = () => { qty = Math.max(1, qty-1); document.getElementById('modalQty').innerText = qty; };
        document.getElementById('modalQtyPlus').onclick = () => { qty++; document.getElementById('modalQty').innerText = qty; };
        document.getElementById('modalAddBtn').onclick = () => { addToCart(id, qty); closeModal(); };
    };
    window.closeModal = () => { document.getElementById('quickViewModal').style.display = 'none'; };

    // Skeleton loading simulation
    function showSkeleton() {
        const container = document.getElementById('productsContainer');
        container.innerHTML = '<div class="skeleton"></div><div class="skeleton"></div><div class="skeleton"></div><div class="skeleton"></div>';
    }

    // Dark Mode
    const themeToggle = document.getElementById('themeToggle');
    themeToggle.addEventListener('click', () => {
        document.body.classList.toggle('dark-mode');
        document.body.classList.toggle('light-mode');
        const isDark = document.body.classList.contains('dark-mode');
        localStorage.setItem('theme', isDark ? 'dark' : 'light');
    });
    const savedTheme = localStorage.getItem('theme');
    if (savedTheme === 'dark') document.body.classList.add('dark-mode');
    else document.body.classList.add('light-mode');

    // Event Listeners
    document.getElementById('globalSearch').addEventListener('input', () => filterAndSortProducts());
    document.getElementById('sortSelect').addEventListener('change', () => filterAndSortProducts());
    document.getElementById('applyPriceFilter').addEventListener('click', () => filterAndSortProducts());
    document.getElementById('cartIconBtn').addEventListener('click', () => {
        showToast(`Cart has ${cart.reduce((s,i)=>s+i.quantity,0)} items. Checkout demo.`, 'success');
    });
    document.getElementById('wishlistIconBtn').addEventListener('click', () => {
        showToast(`❤️ You have ${wishlist.length} items in wishlist`, 'success');
    });

    // Initialize
    function init() {
        showSkeleton();
        setTimeout(() => {
            filterAndSortProducts();
            updateCartUI();
            updateWishlistUI();
            renderRecentlyViewed();
        }, 500);
    }
    init();
</script>
</body>
</html>

