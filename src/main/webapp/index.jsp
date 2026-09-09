<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Varanasi — Epic Essentials New 1</title>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous">
    <style>
        :root {
            --bg: #0b0f1a;
            --bg-elevated: #121826;
            --bg-card: #161e2e;
            --primary: #f5f0e6;
            --muted: #9aa3b5;
            --muted-light: #6b7385;
            --accent: #e07a3d;          /* warm saffron */
            --accent-soft: #f0a06a;
            --accent-dark: #c45c26;
            --gold: #d4a84b;
            --gold-soft: rgba(212, 168, 75, 0.15);
            --olive: #3d4a3a;
            --success: #2a9d8f;
            --radius: 14px;
            --radius-sm: 10px;
            --shadow: 0 8px 32px rgba(0,0,0,0.35);
            --shadow-hover: 0 16px 48px rgba(0,0,0,0.45);
            --transition: 0.28s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1240px;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== BUTTONS ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 13px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            letter-spacing: 0.3px;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark));
            color: #fff;
            box-shadow: 0 6px 20px rgba(224, 122, 61, 0.35);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 28px rgba(224, 122, 61, 0.45);
        }
        .btn-secondary {
            background: var(--gold);
            color: #0b0f1a;
        }
        .btn-secondary:hover {
            background: #e0b85a;
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(245, 240, 230, 0.2);
        }
        .btn-outline:hover {
            background: rgba(245, 240, 230, 0.08);
            border-color: var(--gold);
            color: var(--gold);
        }
        .btn-ghost {
            background: rgba(255,255,255,0.08);
            color: #fff;
            border-color: rgba(255,255,255,0.15);
        }
        .btn-ghost:hover {
            background: rgba(255,255,255,0.14);
            transform: translateY(-2px);
        }
        .btn-sm { padding: 9px 18px; font-size: 13px; }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 15, 26, 0.88);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(212, 168, 75, 0.12);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
            min-height: 72px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Cinzel', serif;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: 1px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent { color: var(--gold); }
        .brand i {
            font-size: 26px;
            color: var(--accent);
            background: linear-gradient(135deg, var(--accent), var(--gold));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: rgba(212, 168, 75, 0.1);
            color: var(--gold);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 17px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: rgba(212, 168, 75, 0.12);
            color: var(--gold);
        }
        .cart-wrap { position: relative; }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--bg-elevated);
            border-radius: 999px;
            padding: 0 16px 0 18px;
            border: 1px solid rgba(212, 168, 75, 0.15);
            min-width: 220px;
            transition: var(--transition);
        }
        .search-wrap:focus-within {
            border-color: var(--gold);
            box-shadow: 0 0 0 3px rgba(212, 168, 75, 0.15);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder { color: var(--muted-light); }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: var(--muted);
            font-size: 15px;
        }
        .search-wrap button:hover { color: var(--gold); }

        .user-chip {
            display: none;
            align-items: center;
            gap: 8px;
            padding: 6px 14px 6px 6px;
            background: rgba(212, 168, 75, 0.12);
            border-radius: 999px;
            font-size: 13px;
            font-weight: 500;
            color: var(--gold);
            border: 1px solid rgba(212, 168, 75, 0.25);
        }
        .user-chip .avatar {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--accent), var(--gold));
            display: grid;
            place-items: center;
            font-size: 12px;
            color: #fff;
            font-weight: 700;
        }
        .user-chip.visible { display: flex; }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--bg-elevated);
            color: var(--primary);
        }
        #mobileMenu {
            display: none;
            background: var(--bg-elevated);
            border-top: 1px solid rgba(212, 168, 75, 0.1);
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
        }
        #mobileMenu ul li a:hover { background: rgba(212, 168, 75, 0.1); color: var(--gold); }
        #mobileMenu ul li a i { width: 22px; color: var(--muted); }

        /* ===== HERO ===== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 540px;
            padding: 70px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 20px 24px 0;
            background: linear-gradient(135deg, #0b0f1a 0%, #1a2333 50%, #0f1a14 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1548013146-72479768bada?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            opacity: 0.28;
            z-index: 0;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(90deg, rgba(11,15,26,0.92) 0%, rgba(11,15,26,0.55) 55%, rgba(11,15,26,0.3) 100%);
            z-index: 0;
        }
        .hero .container { position: relative; z-index: 1; }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(212, 168, 75, 0.18);
            color: var(--gold);
            padding: 6px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.6px;
            margin-bottom: 18px;
            border: 1px solid rgba(212, 168, 75, 0.3);
        }
        .hero h1 {
            font-family: 'Cinzel', serif;
            font-size: 52px;
            font-weight: 700;
            color: #fff;
            line-height: 1.12;
            max-width: 620px;
            margin-bottom: 18px;
            letter-spacing: 0.5px;
        }
        .hero h1 span { color: var(--gold); }
        .hero p {
            color: rgba(245, 240, 230, 0.78);
            font-size: 17px;
            max-width: 500px;
            margin-bottom: 30px;
            line-height: 1.65;
        }
        .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

        /* ===== SECTION ===== */
        .section { padding: 60px 0; }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-family: 'Cinzel', serif;
            font-size: 28px;
            font-weight: 600;
            letter-spacing: 0.4px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 6px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--gold);
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            transition: var(--transition);
        }
        .section-header .view-all:hover { gap: 10px; color: var(--accent-soft); }

        /* ===== CATEGORIES ===== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 26px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid rgba(212, 168, 75, 0.08);
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(212, 168, 75, 0.35);
        }
        .cat-card .icon-wrap {
            width: 58px;
            height: 58px;
            border-radius: 50%;
            background: var(--gold-soft);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 24px;
            color: var(--gold);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: linear-gradient(135deg, var(--accent), var(--gold));
            color: #fff;
        }
        .cat-card h4 { font-size: 15px; font-weight: 600; }
        .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

        /* ===== PRODUCTS ===== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 1px solid rgba(212, 168, 75, 0.07);
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(212, 168, 75, 0.28);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: #0f1520;
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img { transform: scale(1.05); }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.4px;
        }
        .product-card .badge.sale {
            background: var(--gold);
            color: #0b0f1a;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(11, 15, 26, 0.7);
            display: grid;
            place-items: center;
            font-size: 15px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(6px);
        }
        .product-card .wish-btn:hover {
            background: var(--accent);
            color: #fff;
            transform: scale(1.08);
        }
        .product-card .body {
            padding: 16px 18px 12px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 11px;
            color: var(--gold);
            text-transform: uppercase;
            letter-spacing: 0.8px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: var(--gold);
        }
        .product-card .body .rating span { color: var(--muted); font-weight: 400; }
        .product-card .footer {
            padding: 0 18px 18px;
            display: flex;
            gap: 10px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 11px;
            border-radius: var(--radius-sm);
            background: linear-gradient(135deg, #1e2a3d, #162033);
            color: var(--primary);
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            border: 1px solid rgba(212, 168, 75, 0.2);
        }
        .product-card .footer .add-btn:hover {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark));
            color: #fff;
            border-color: transparent;
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
            border-color: transparent;
            color: #fff;
        }

        /* ===== DEAL ===== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            border: 1px solid rgba(212, 168, 75, 0.12);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #0f1520;
            min-height: 340px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 42px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(212, 168, 75, 0.18);
            color: var(--gold);
            padding: 5px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            align-self: flex-start;
            margin-bottom: 14px;
            border: 1px solid rgba(212, 168, 75, 0.3);
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Cinzel', serif;
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 18px;
            font-size: 15px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 6px 0 18px;
        }
        .deal-wrap .deal-content .stock strong { color: var(--accent); }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 16px 0 22px;
        }
        .timer-box {
            background: linear-gradient(145deg, #1a2333, #121826);
            color: #fff;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            min-width: 70px;
            text-align: center;
            border: 1px solid rgba(212, 168, 75, 0.2);
        }
        .timer-box .num {
            font-size: 26px;
            font-weight: 700;
            line-height: 1.2;
            color: var(--gold);
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ===== TESTIMONIALS ===== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 4px; }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: rgba(212, 168, 75, 0.4);
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            border: 1px solid rgba(212, 168, 75, 0.08);
            transition: var(--transition);
        }
        .testimonial-card:hover {
            border-color: rgba(212, 168, 75, 0.25);
            box-shadow: var(--shadow-hover);
        }
        .testimonial-card .stars {
            color: var(--gold);
            font-size: 15px;
            letter-spacing: 2px;
            margin-bottom: 12px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.65;
            color: var(--primary);
            margin-bottom: 16px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--bg-elevated);
            border: 2px solid rgba(212, 168, 75, 0.3);
        }
        .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
        .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

        /* ===== NEWSLETTER ===== */
        .newsletter-wrap {
            background: linear-gradient(135deg, #121826 0%, #1a2333 50%, #152018 100%);
            border-radius: var(--radius);
            padding: 48px 56px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
            border: 1px solid rgba(212, 168, 75, 0.15);
            position: relative;
            overflow: hidden;
        }
        .newsletter-wrap::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(212,168,75,0.12) 0%, transparent 70%);
            pointer-events: none;
        }
        .newsletter-wrap .text h3 {
            font-family: 'Cinzel', serif;
            font-size: 26px;
            font-weight: 600;
            margin-bottom: 6px;
        }
        .newsletter-wrap .text p { opacity: 0.75; font-size: 15px; }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
            position: relative;
            z-index: 1;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 14px 20px;
            border-radius: 999px;
            border: 1px solid rgba(212, 168, 75, 0.25);
            font-size: 15px;
            background: rgba(255,255,255,0.06);
            color: #fff;
            outline: none;
            transition: var(--transition);
        }
        .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.45); }
        .newsletter-wrap form input:focus {
            border-color: var(--gold);
            background: rgba(255,255,255,0.1);
        }
        .newsletter-wrap form .btn {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark));
            color: #fff;
            padding: 14px 28px;
        }
        #newsletterMsg {
            margin-top: 12px;
            font-size: 14px;
            width: 100%;
        }

        /* ===== FOOTER ===== */
        footer {
            margin-top: 20px;
            padding: 48px 0 28px;
            border-top: 1px solid rgba(212, 168, 75, 0.1);
            background: #090d15;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 36px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            line-height: 1.65;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 16px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--bg-elevated);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 15px;
            border: 1px solid rgba(212, 168, 75, 0.1);
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
            border-color: transparent;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 14px;
            color: var(--gold);
            letter-spacing: 0.4px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover { color: var(--accent-soft); }
        .footer-bottom {
            text-align: center;
            padding-top: 22px;
            border-top: 1px solid rgba(212, 168, 75, 0.08);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ===== LOGIN MODAL ===== */
        .modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(5, 8, 15, 0.82);
            backdrop-filter: blur(8px);
            z-index: 200;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .modal-overlay.open { display: flex; }
        .modal {
            background: var(--bg-card);
            border-radius: 18px;
            width: 100%;
            max-width: 420px;
            padding: 36px 32px;
            box-shadow: 0 24px 80px rgba(0,0,0,0.55);
            border: 1px solid rgba(212, 168, 75, 0.2);
            position: relative;
            animation: modalIn 0.3s ease;
        }
        @keyframes modalIn {
            from { opacity: 0; transform: translateY(16px) scale(0.97); }
            to { opacity: 1; transform: translateY(0) scale(1); }
        }
        .modal .close-btn {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: var(--muted);
            font-size: 16px;
            transition: var(--transition);
        }
        .modal .close-btn:hover {
            background: rgba(255,255,255,0.06);
            color: var(--primary);
        }
        .modal .modal-icon {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--accent), var(--gold));
            display: grid;
            place-items: center;
            margin: 0 auto 18px;
            font-size: 24px;
            color: #fff;
        }
        .modal h3 {
            font-family: 'Cinzel', serif;
            font-size: 24px;
            text-align: center;
            margin-bottom: 6px;
        }
        .modal .sub {
            text-align: center;
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 24px;
        }
        .form-group {
            margin-bottom: 16px;
        }
        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: 500;
            color: var(--muted);
            margin-bottom: 6px;
        }
        .form-group input {
            width: 100%;
            padding: 13px 16px;
            border-radius: var(--radius-sm);
            border: 1px solid rgba(212, 168, 75, 0.2);
            background: var(--bg-elevated);
            color: var(--primary);
            font-size: 15px;
            outline: none;
            transition: var(--transition);
        }
        .form-group input:focus {
            border-color: var(--gold);
            box-shadow: 0 0 0 3px rgba(212, 168, 75, 0.12);
        }
        .creds-box {
            background: rgba(212, 168, 75, 0.08);
            border: 1px dashed rgba(212, 168, 75, 0.3);
            border-radius: var(--radius-sm);
            padding: 12px 14px;
            margin-bottom: 18px;
            font-size: 13px;
            color: var(--muted);
            line-height: 1.5;
        }
        .creds-box strong { color: var(--gold); }
        .modal .btn { width: 100%; margin-top: 4px; }
        .login-error {
            color: #ff8a80;
            font-size: 13px;
            text-align: center;
            margin-top: 12px;
            display: none;
        }
        .login-success {
            color: #a5d6a7;
            font-size: 14px;
            text-align: center;
            margin-top: 12px;
            display: none;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
        }
        @media (max-width: 992px) {
            .hero h1 { font-size: 38px; }
            .hero { min-height: 420px; margin: 16px 16px 0; padding: 48px 0; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 240px; }
            .deal-wrap .deal-content { padding: 28px 30px; }
            .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; }
            .search-wrap { min-width: 150px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .hero h1 { font-size: 30px; }
            .hero p { font-size: 15px; }
            .section-header h2 { font-size: 22px; }
            .deal-wrap .deal-content h3 { font-size: 22px; }
            .deal-wrap .deal-content .price-big { font-size: 26px; }
            .timer-box { min-width: 56px; padding: 8px 12px; }
            .timer-box .num { font-size: 20px; }
            .footer-grid { grid-template-columns: 1fr; gap: 22px; }
            .brand { font-size: 18px; }
            .search-wrap { min-width: 110px; }
            .testimonial-card { flex: 0 0 280px; }
            .section { padding: 40px 0; }
        }
        @media (max-width: 480px) {
            .products-grid, .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .hero { margin: 10px 10px 0; min-height: 340px; padding: 32px 0; }
            .hero h1 { font-size: 26px; }
            .container { padding: 0 14px; }
            .deal-wrap .deal-content { padding: 20px 18px; }
            .newsletter-wrap { padding: 24px 18px; }
            .newsletter-wrap .text h3 { font-size: 20px; }
            .product-card .body { padding: 12px; }
            .product-card .body h5 { font-size: 13px; }
            .product-card .body .price { font-size: 15px; }
            .product-card .footer { padding: 0 12px 12px; }
            .product-card .footer .add-btn { font-size: 12px; padding: 9px; }
            .timer-box { min-width: 48px; padding: 6px 8px; }
            .timer-box .num { font-size: 16px; }
            .cat-card { padding: 18px 10px; }
            .cat-card .icon-wrap { width: 46px; height: 46px; font-size: 18px; }
            .cat-card h4 { font-size: 13px; }
            .modal { padding: 28px 22px; }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-om"></i>
                    <span>Vara<span class="accent">nasi</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Deal</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search the vault..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <div class="user-chip" id="userChip">
                        <div class="avatar" id="userAvatar">R</div>
                        <span id="userName">Rudhra</span>
                    </div>
                    <button class="icon-btn" id="loginBtn" title="Login" aria-label="Login">
                        <i class="far fa-user"></i>
                    </button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Deal</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#" id="mobileLogin"><i class="far fa-user"></i> Login</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-dharmachakra"></i> Inspired by the Epic</div>
                <h1>Journey Beyond<br><span>Time & Destiny</span></h1>
                <p>Curated adventure gear, apparel & collectibles for those who walk the path of Rudhra. Free shipping on your first order.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Collection</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-bolt"></i> Flash Deal</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Sacred Categories</h2>
                        <p>Find your path through the collection</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Trending Now</h2>
                        <p>Chosen by the community of explorers</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>⚡ Flash Deal</h2>
                        <p>Limited stock — the artifact won’t wait</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=900&q=80" alt="Premium Explorer Camera" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Artifact</span>
                        <h3>Rudhra Explorer Pack</h3>
                        <p class="desc">Premium field camera + weatherproof case. Built for those who chase the horizon across continents.</p>
                        <div>
                            <span class="price-big">$899 <span class="old">$1,149</span></span>
                        </div>
                        <p class="stock">Only <strong>9</strong> units left — claim yours</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Voices from the Journey</h2>
                        <p>Real explorers. Real stories.</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3>Join the Circle</h3>
                        <p>Early access to drops, exclusive art & film-inspired releases</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-om"></i>
                        <span>Vara<span class="accent">nasi</span></span>
                    </div>
                    <p>Epic essentials inspired by the greatest adventure of our time. Crafted for those who carry destiny.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Explore</h5>
                    <ul>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Limited Drops</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> Varanasi. Fan-inspired demo. Not affiliated with the official film.
            </div>
        </div>
    </footer>

    <!-- LOGIN MODAL -->
    <div class="modal-overlay" id="loginModal">
        <div class="modal">
            <button class="close-btn" id="closeModal" aria-label="Close"><i class="fas fa-times"></i></button>
            <div class="modal-icon"><i class="fas fa-user-shield"></i></div>
            <h3>Enter the Circle</h3>
            <p class="sub">Sign in to track orders & exclusive drops</p>

            <div class="creds-box">
                <strong>Demo credentials</strong><br>
                Email: <strong>fan@varanasi.com</strong><br>
                Password: <strong>Rudhra2027</strong>
            </div>

            <form id="loginForm">
                <div class="form-group">
                    <label for="loginEmail">Email</label>
                    <input type="email" id="loginEmail" placeholder="fan@varanasi.com" required autocomplete="username">
                </div>
                <div class="form-group">
                    <label for="loginPass">Password</label>
                    <input type="password" id="loginPass" placeholder="••••••••" required autocomplete="current-password">
                </div>
                <button type="submit" class="btn btn-primary">Sign In</button>
                <div class="login-error" id="loginError">Invalid credentials. Try the demo ones above.</div>
                <div class="login-success" id="loginSuccess">Welcome back, explorer!</div>
            </form>
        </div>
    </div>

    <script>
        // ========== DATA ==========
        const CATEGORIES = [
            { id: 'apparel', name: 'Apparel', icon: 'fa-tshirt', count: 36 },
            { id: 'gear', name: 'Field Gear', icon: 'fa-compass', count: 22 },
            { id: 'collectibles', name: 'Collectibles', icon: 'fa-gem', count: 18 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 14 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 29 },
            { id: 'art', name: 'Art Prints', icon: 'fa-palette', count: 11 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'Rudhra Explorer Jacket', price: 189, oldPrice: 240, rating: 5, reviews: 94, badge: 'New',
                img: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=600&q=80',
                category: 'Apparel' },
            { id: 2, title: 'Varanasi Heritage Tee', price: 42, rating: 5, reviews: 210, badge: '',
                img: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80',
                category: 'Apparel' },
            { id: 3, title: 'Sacred Trident Pendant', price: 68, oldPrice: 89, rating: 5, reviews: 156, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Trailblazer Boots', price: 165, rating: 4, reviews: 73, badge: '',
                img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Field Camera Pro', price: 899, rating: 5, reviews: 48, badge: 'New',
                img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80',
                category: 'Field Gear' },
            { id: 6, title: 'Om Meditation Bracelet', price: 34, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Adventure Daypack', price: 98, oldPrice: 129, rating: 4, reviews: 112, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80',
                category: 'Field Gear' },
            { id: 8, title: 'Epic Landscape Print', price: 55, rating: 5, reviews: 67, badge: '',
                img: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?auto=format&fit=crop&w=600&q=80',
                category: 'Art Prints' }
        ];

        const TESTIMONIALS = [
            { name: 'Arjun Mehta', role: 'Verified Explorer', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'The quality feels cinematic. Wore the Explorer Jacket on a trek and got compliments the whole way.', stars: 5 },
            { name: 'Priya Nair', role: 'Collector', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Beautiful packaging and the pendant is stunning. Feels like a piece of the story.', stars: 5 },
            { name: 'Rohan Desai', role: 'Frequent Buyer', avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80',
                text: 'Fast shipping and the boots are incredibly comfortable. Already ordered a second pair.', stars: 4 },
            { name: 'Ananya Rao', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'The art prints elevated my space. Rich colors and true-to-theme details.', stars: 5 }
        ];

        // ========== STATE ==========
        let cartCount = 0;
        let isLoggedIn = false;

        // ========== DOM ==========
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');
        const loginModal = document.getElementById('loginModal');
        const loginBtn = document.getElementById('loginBtn');
        const closeModal = document.getElementById('closeModal');
        const loginForm = document.getElementById('loginForm');
        const userChip = document.getElementById('userChip');

        // ========== RENDER ==========
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No items found in the vault.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    addToCart(Number(this.dataset.id), this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ========== UTILS ==========
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();
            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--gold)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ========== TIMER ==========
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (18 * 60 + 47) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    ['dealDays','dealHours','dealMinutes','dealSeconds'].forEach(id => {
                        document.getElementById(id).textContent = id === 'dealDays' ? '0' : '00';
                    });
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ========== EVENTS ==========
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        newsletterForm.addEventListener('submit', e => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email.';
                newsletterMsg.style.color = '#ff8a80';
                return;
            }
            newsletterMsg.textContent = 'Welcome to the circle! Check your inbox.';
            newsletterMsg.style.color = '#a5d6a7';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3500);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // Login
        function openLogin() {
            loginModal.classList.add('open');
            document.getElementById('loginError').style.display = 'none';
            document.getElementById('loginSuccess').style.display = 'none';
        }
        function closeLogin() {
            loginModal.classList.remove('open');
        }
        loginBtn.addEventListener('click', openLogin);
        document.getElementById('mobileLogin')?.addEventListener('click', openLogin);
        closeModal.addEventListener('click', closeLogin);
        loginModal.addEventListener('click', e => { if (e.target === loginModal) closeLogin(); });

        loginForm.addEventListener('submit', e => {
            e.preventDefault();
            const email = document.getElementById('loginEmail').value.trim().toLowerCase();
            const pass = document.getElementById('loginPass').value;
            const err = document.getElementById('loginError');
            const ok = document.getElementById('loginSuccess');

            if (email === 'fan@varanasi.com' && pass === 'Rudhra2027') {
                err.style.display = 'none';
                ok.style.display = 'block';
                isLoggedIn = true;
                userChip.classList.add('visible');
                loginBtn.style.display = 'none';
                setTimeout(() => {
                    closeLogin();
                    ok.style.display = 'none';
                    loginForm.reset();
                }, 1200);
            } else {
                ok.style.display = 'none';
                err.style.display = 'block';
            }
        });

        // Init
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🔥 Varanasi — Epic Essentials loaded. Demo login: fan@varanasi.com / Rudhra2027');
    </script>
</body>
</html>
