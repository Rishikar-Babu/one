<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Varanasi — Official Inspired Merch & Gallery</title>
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
            --accent: #e07a3d;
            --accent-soft: #f0a06a;
            --accent-dark: #c45c26;
            --gold: #d4a84b;
            --gold-soft: rgba(212, 168, 75, 0.15);
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
        .container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 24px; }

        .btn {
            display: inline-flex; align-items: center; justify-content: center; gap: 8px;
            padding: 13px 28px; border-radius: 999px; font-weight: 600; font-size: 14px;
            letter-spacing: 0.3px; transition: var(--transition); border: 2px solid transparent;
        }
        .btn-primary {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark));
            color: #fff; box-shadow: 0 6px 20px rgba(224, 122, 61, 0.35);
        }
        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 10px 28px rgba(224, 122, 61, 0.45); }
        .btn-ghost { background: rgba(255,255,255,0.08); color: #fff; border-color: rgba(255,255,255,0.15); }
        .btn-ghost:hover { background: rgba(255,255,255,0.14); transform: translateY(-2px); }

        header {
            position: sticky; top: 0; z-index: 100;
            background: rgba(11, 15, 26, 0.88); backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px); border-bottom: 1px solid rgba(212, 168, 75, 0.12);
        }
        .header-inner {
            display: flex; align-items: center; justify-content: space-between; gap: 16px;
            padding: 14px 0; min-height: 72px;
        }
        .brand {
            display: flex; align-items: center; gap: 12px;
            font-family: 'Cinzel', serif; font-weight: 700; font-size: 22px;
            letter-spacing: 1px; color: var(--primary); flex-shrink: 0;
        }
        .brand .accent { color: var(--gold); }
        .brand i {
            font-size: 26px;
            background: linear-gradient(135deg, var(--accent), var(--gold));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
        }
        nav.main-nav ul { display: flex; gap: 4px; list-style: none; align-items: center; }
        nav.main-nav li a {
            display: flex; align-items: center; gap: 6px; padding: 8px 16px;
            border-radius: var(--radius-sm); font-weight: 500; font-size: 14px;
            color: var(--muted); transition: var(--transition);
        }
        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: rgba(212, 168, 75, 0.1); color: var(--gold);
        }
        .header-actions { display: flex; align-items: center; gap: 6px; flex-shrink: 0; }
        .header-actions .icon-btn {
            width: 42px; height: 42px; display: grid; place-items: center;
            border-radius: 50%; font-size: 17px; color: var(--muted); transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover { background: rgba(212, 168, 75, 0.12); color: var(--gold); }
        .cart-wrap { position: relative; }
        .cart-count {
            position: absolute; top: -2px; right: -2px; background: var(--accent); color: #fff;
            font-size: 11px; font-weight: 700; width: 20px; height: 20px; border-radius: 50%;
            display: grid; place-items: center; border: 2px solid var(--bg);
        }
        .search-wrap {
            display: flex; align-items: center; background: var(--bg-elevated);
            border-radius: 999px; padding: 0 16px 0 18px;
            border: 1px solid rgba(212, 168, 75, 0.15); min-width: 200px; transition: var(--transition);
        }
        .search-wrap:focus-within { border-color: var(--gold); box-shadow: 0 0 0 3px rgba(212, 168, 75, 0.15); }
        .search-wrap input {
            border: 0; background: transparent; outline: none; width: 100%;
            padding: 10px 0; font-size: 14px; color: var(--primary);
        }
        .search-wrap input::placeholder { color: var(--muted-light); }
        .search-wrap button { padding: 8px 0 8px 10px; color: var(--muted); font-size: 15px; }
        .search-wrap button:hover { color: var(--gold); }
        .user-chip {
            display: none; align-items: center; gap: 8px; padding: 6px 14px 6px 6px;
            background: rgba(212, 168, 75, 0.12); border-radius: 999px; font-size: 13px;
            font-weight: 500; color: var(--gold); border: 1px solid rgba(212, 168, 75, 0.25);
        }
        .user-chip .avatar {
            width: 28px; height: 28px; border-radius: 50%;
            background: linear-gradient(135deg, var(--accent), var(--gold));
            display: grid; place-items: center; font-size: 12px; color: #fff; font-weight: 700;
        }
        .user-chip.visible { display: flex; }
        .mobile-toggle {
            display: none; width: 42px; height: 42px; border-radius: 50%;
            font-size: 20px; background: var(--bg-elevated); color: var(--primary);
        }
        #mobileMenu {
            display: none; background: var(--bg-elevated);
            border-top: 1px solid rgba(212, 168, 75, 0.1); padding: 12px 0 20px;
        }
        #mobileMenu ul { list-style: none; display: flex; flex-direction: column; gap: 4px; }
        #mobileMenu ul li a {
            display: flex; align-items: center; gap: 12px; padding: 12px 16px;
            border-radius: var(--radius-sm); font-weight: 500; color: var(--primary);
        }
        #mobileMenu ul li a:hover { background: rgba(212, 168, 75, 0.1); color: var(--gold); }

        .hero {
            position: relative; display: flex; align-items: center; min-height: 560px;
            padding: 70px 0; border-radius: var(--radius); overflow: hidden;
            margin: 20px 24px 0;
            background: linear-gradient(135deg, #0b0f1a 0%, #1a2333 50%, #0f1a14 100%);
        }
        .hero::before {
            content: ''; position: absolute; inset: 0;
            background: url('https://pbs.twimg.com/media/G50-3tzW4AA7QNw.jpg') center/cover no-repeat;
            opacity: 0.45; z-index: 0;
        }
        .hero::after {
            content: ''; position: absolute; inset: 0;
            background: linear-gradient(90deg, rgba(11,15,26,0.94) 0%, rgba(11,15,26,0.6) 50%, rgba(11,15,26,0.35) 100%);
            z-index: 0;
        }
        .hero .container { position: relative; z-index: 1; }
        .hero .badge {
            display: inline-flex; align-items: center; gap: 8px;
            background: rgba(212, 168, 75, 0.18); color: var(--gold);
            padding: 6px 16px; border-radius: 999px; font-weight: 600; font-size: 13px;
            letter-spacing: 0.6px; margin-bottom: 18px; border: 1px solid rgba(212, 168, 75, 0.3);
        }
        .hero h1 {
            font-family: 'Cinzel', serif; font-size: 52px; font-weight: 700; color: #fff;
            line-height: 1.12; max-width: 640px; margin-bottom: 18px; letter-spacing: 0.5px;
        }
        .hero h1 span { color: var(--gold); }
        .hero p {
            color: rgba(245, 240, 230, 0.78); font-size: 17px; max-width: 520px;
            margin-bottom: 30px; line-height: 1.65;
        }
        .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

        .section { padding: 60px 0; }
        .section-header {
            display: flex; align-items: flex-end; justify-content: space-between;
            gap: 16px; margin-bottom: 32px; flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-family: 'Cinzel', serif; font-size: 28px; font-weight: 600; letter-spacing: 0.4px;
        }
        .section-header .title-group p { color: var(--muted); margin-top: 6px; font-size: 15px; }
        .section-header .view-all {
            font-weight: 600; color: var(--gold); display: flex; align-items: center;
            gap: 6px; font-size: 14px; transition: var(--transition);
        }
        .section-header .view-all:hover { gap: 10px; color: var(--accent-soft); }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }
        .gallery-card {
            position: relative; border-radius: var(--radius); overflow: hidden;
            aspect-ratio: 2/3; background: var(--bg-card); border: 1px solid rgba(212,168,75,0.12);
            box-shadow: var(--shadow); transition: var(--transition); cursor: pointer;
        }
        .gallery-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-hover); border-color: rgba(212,168,75,0.35); }
        .gallery-card img { width: 100%; height: 100%; object-fit: cover; transition: var(--transition); }
        .gallery-card:hover img { transform: scale(1.04); }
        .gallery-card .caption {
            position: absolute; bottom: 0; left: 0; right: 0;
            padding: 40px 16px 16px;
            background: linear-gradient(transparent, rgba(0,0,0,0.85));
            font-size: 13px; font-weight: 600; color: #fff;
        }
        .gallery-card .caption span { display: block; font-size: 11px; color: var(--gold); font-weight: 500; margin-top: 2px; }

        .categories-grid { display: grid; grid-template-columns: repeat(6, 1fr); gap: 16px; }
        .cat-card {
            background: var(--bg-card); border-radius: var(--radius); padding: 26px 16px;
            text-align: center; box-shadow: var(--shadow); transition: var(--transition);
            cursor: pointer; border: 1px solid rgba(212, 168, 75, 0.08);
        }
        .cat-card:hover {
            transform: translateY(-6px); box-shadow: var(--shadow-hover);
            border-color: rgba(212, 168, 75, 0.35);
        }
        .cat-card .icon-wrap {
            width: 58px; height: 58px; border-radius: 50%; background: var(--gold-soft);
            display: grid; place-items: center; margin: 0 auto 14px; font-size: 24px;
            color: var(--gold); transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: linear-gradient(135deg, var(--accent), var(--gold)); color: #fff;
        }
        .cat-card h4 { font-size: 15px; font-weight: 600; }
        .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

        .products-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 22px; }
        .product-card {
            background: var(--bg-card); border-radius: var(--radius); overflow: hidden;
            box-shadow: var(--shadow); transition: var(--transition);
            display: flex; flex-direction: column; border: 1px solid rgba(212, 168, 75, 0.07);
        }
        .product-card:hover {
            transform: translateY(-6px); box-shadow: var(--shadow-hover);
            border-color: rgba(212, 168, 75, 0.28);
        }
        .product-card .img-wrap {
            position: relative; overflow: hidden; background: #0f1520; aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%; height: 100%; object-fit: cover; transition: var(--transition);
        }
        .product-card:hover .img-wrap img { transform: scale(1.05); }
        .product-card .badge {
            position: absolute; top: 12px; left: 12px; background: var(--accent); color: #fff;
            padding: 4px 12px; border-radius: 999px; font-size: 11px; font-weight: 700; letter-spacing: 0.4px;
        }
        .product-card .badge.sale { background: var(--gold); color: #0b0f1a; }
        .product-card .wish-btn {
            position: absolute; top: 12px; right: 12px; width: 36px; height: 36px;
            border-radius: 50%; background: rgba(11, 15, 26, 0.7); display: grid;
            place-items: center; font-size: 15px; color: var(--muted); transition: var(--transition);
            backdrop-filter: blur(6px);
        }
        .product-card .wish-btn:hover { background: var(--accent); color: #fff; transform: scale(1.08); }
        .product-card .body {
            padding: 16px 18px 12px; flex: 1; display: flex; flex-direction: column; gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 11px; color: var(--gold); text-transform: uppercase;
            letter-spacing: 0.8px; font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px; font-weight: 600; line-height: 1.3;
            display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;
        }
        .product-card .body .price-row { display: flex; align-items: center; gap: 10px; margin-top: 4px; }
        .product-card .body .price { font-weight: 700; font-size: 18px; color: var(--primary); }
        .product-card .body .old-price { color: var(--muted-light); text-decoration: line-through; font-size: 14px; }
        .product-card .body .rating { display: flex; align-items: center; gap: 4px; font-size: 13px; color: var(--gold); }
        .product-card .body .rating span { color: var(--muted); font-weight: 400; }
        .product-card .footer { padding: 0 18px 18px; display: flex; gap: 10px; }
        .product-card .footer .add-btn {
            flex: 1; padding: 11px; border-radius: var(--radius-sm);
            background: linear-gradient(135deg, #1e2a3d, #162033); color: var(--primary);
            font-weight: 600; font-size: 14px; transition: var(--transition);
            display: flex; align-items: center; justify-content: center; gap: 8px;
            border: 1px solid rgba(212, 168, 75, 0.2);
        }
        .product-card .footer .add-btn:hover {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark));
            color: #fff; border-color: transparent;
        }
        .product-card .footer .add-btn.added { background: var(--success); border-color: transparent; color: #fff; }

        .deal-wrap {
            display: flex; gap: 0; background: var(--bg-card); border-radius: var(--radius);
            overflow: hidden; box-shadow: var(--shadow); border: 1px solid rgba(212, 168, 75, 0.12);
        }
        .deal-wrap .deal-img { flex: 0 0 46%; background: #0f1520; min-height: 360px; }
        .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
        .deal-wrap .deal-content {
            flex: 1; padding: 42px 48px; display: flex; flex-direction: column; justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex; align-items: center; gap: 6px;
            background: rgba(212, 168, 75, 0.18); color: var(--gold);
            padding: 5px 14px; border-radius: 999px; font-size: 12px; font-weight: 700;
            text-transform: uppercase; letter-spacing: 0.6px; align-self: flex-start; margin-bottom: 14px;
            border: 1px solid rgba(212, 168, 75, 0.3);
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Cinzel', serif; font-size: 28px; font-weight: 600; margin-bottom: 8px;
        }
        .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 18px; font-size: 15px; }
        .deal-wrap .deal-content .price-big { font-size: 32px; font-weight: 800; color: var(--primary); }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px; font-weight: 400; color: var(--muted-light);
            text-decoration: line-through; margin-left: 12px;
        }
        .deal-wrap .deal-content .stock { font-size: 14px; color: var(--muted); margin: 6px 0 18px; }
        .deal-wrap .deal-content .stock strong { color: var(--accent); }
        .timer-grid { display: flex; gap: 12px; margin: 16px 0 22px; }
        .timer-box {
            background: linear-gradient(145deg, #1a2333, #121826); color: #fff;
            padding: 12px 16px; border-radius: var(--radius-sm); min-width: 70px; text-align: center;
            border: 1px solid rgba(212, 168, 75, 0.2);
        }
        .timer-box .num { font-size: 26px; font-weight: 700; line-height: 1.2; color: var(--gold); }
        .timer-box .label { font-size: 11px; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.5px; }

        .testimonials-scroll {
            display: flex; gap: 20px; overflow-x: auto; padding: 8px 4px 16px;
            scroll-snap-type: x mandatory; -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 4px; }
        .testimonials-scroll::-webkit-scrollbar-thumb { background: rgba(212, 168, 75, 0.4); border-radius: 999px; }
        .testimonial-card {
            flex: 0 0 340px; background: var(--bg-card); border-radius: var(--radius);
            padding: 26px; box-shadow: var(--shadow); scroll-snap-align: start;
            border: 1px solid rgba(212, 168, 75, 0.08); transition: var(--transition);
        }
        .testimonial-card:hover { border-color: rgba(212, 168, 75, 0.25); box-shadow: var(--shadow-hover); }
        .testimonial-card .stars { color: var(--gold); font-size: 15px; letter-spacing: 2px; margin-bottom: 12px; }
        .testimonial-card blockquote {
            font-size: 15px; line-height: 1.65; color: var(--primary); margin-bottom: 16px; font-style: italic;
        }
        .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
        .testimonial-card .author .avatar {
            width: 44px; height: 44px; border-radius: 50%; object-fit: cover;
            background: var(--bg-elevated); border: 2px solid rgba(212, 168, 75, 0.3);
        }
        .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
        .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

        .newsletter-wrap {
            background: linear-gradient(135deg, #121826 0%, #1a2333 50%, #152018 100%);
            border-radius: var(--radius); padding: 48px 56px; color: #fff;
            display: flex; align-items: center; justify-content: space-between; gap: 32px;
            flex-wrap: wrap; border: 1px solid rgba(212, 168, 75, 0.15); position: relative; overflow: hidden;
        }
        .newsletter-wrap .text h3 {
            font-family: 'Cinzel', serif; font-size: 26px; font-weight: 600; margin-bottom: 6px;
        }
        .newsletter-wrap .text p { opacity: 0.75; font-size: 15px; }
        .newsletter-wrap form {
            display: flex; gap: 10px; flex-wrap: wrap; flex: 1; max-width: 480px; position: relative; z-index: 1;
        }
        .newsletter-wrap form input {
            flex: 1; min-width: 200px; padding: 14px 20px; border-radius: 999px;
            border: 1px solid rgba(212, 168, 75, 0.25); font-size: 15px;
            background: rgba(255,255,255,0.06); color: #fff; outline: none; transition: var(--transition);
        }
        .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.45); }
        .newsletter-wrap form input:focus { border-color: var(--gold); background: rgba(255,255,255,0.1); }
        .newsletter-wrap form .btn {
            background: linear-gradient(135deg, var(--accent), var(--accent-dark)); color: #fff; padding: 14px 28px;
        }
        #newsletterMsg { margin-top: 12px; font-size: 14px; width: 100%; }

        footer {
            margin-top: 20px; padding: 48px 0 28px;
            border-top: 1px solid rgba(212, 168, 75, 0.1); background: #090d15;
        }
        .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 40px; margin-bottom: 36px; }
        .footer-grid .brand-col .brand { font-size: 20px; margin-bottom: 10px; }
        .footer-grid .brand-col p { color: var(--muted); font-size: 14px; max-width: 300px; line-height: 1.65; }
        .footer-grid .brand-col .socials { display: flex; gap: 10px; margin-top: 16px; }
        .footer-grid .brand-col .socials a {
            width: 40px; height: 40px; border-radius: 50%; background: var(--bg-elevated);
            display: grid; place-items: center; color: var(--muted); transition: var(--transition);
            font-size: 15px; border: 1px solid rgba(212, 168, 75, 0.1);
        }
        .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; border-color: transparent; }
        .footer-grid .col h5 {
            font-weight: 700; font-size: 14px; margin-bottom: 14px; color: var(--gold); letter-spacing: 0.4px;
        }
        .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 8px; }
        .footer-grid .col ul li a { color: var(--muted); font-size: 14px; transition: var(--transition); }
        .footer-grid .col ul li a:hover { color: var(--accent-soft); }
        .footer-bottom {
            text-align: center; padding-top: 22px; border-top: 1px solid rgba(212, 168, 75, 0.08);
            color: var(--muted-light); font-size: 13px;
        }

        .modal-overlay {
            position: fixed; inset: 0; background: rgba(5, 8, 15, 0.82);
            backdrop-filter: blur(8px); z-index: 200; display: none;
            align-items: center; justify-content: center; padding: 20px;
        }
        .modal-overlay.open { display: flex; }
        .modal {
            background: var(--bg-card); border-radius: 18px; width: 100%; max-width: 420px;
            padding: 36px 32px; box-shadow: 0 24px 80px rgba(0,0,0,0.55);
            border: 1px solid rgba(212, 168, 75, 0.2); position: relative; animation: modalIn 0.3s ease;
        }
        @keyframes modalIn {
            from { opacity: 0; transform: translateY(16px) scale(0.97); }
            to { opacity: 1; transform: translateY(0) scale(1); }
        }
        .modal .close-btn {
            position: absolute; top: 16px; right: 16px; width: 36px; height: 36px;
            border-radius: 50%; display: grid; place-items: center; color: var(--muted);
            font-size: 16px; transition: var(--transition);
        }
        .modal .close-btn:hover { background: rgba(255,255,255,0.06); color: var(--primary); }
        .modal .modal-icon {
            width: 56px; height: 56px; border-radius: 50%;
            background: linear-gradient(135deg, var(--accent), var(--gold));
            display: grid; place-items: center; margin: 0 auto 18px; font-size: 24px; color: #fff;
        }
        .modal h3 { font-family: 'Cinzel', serif; font-size: 24px; text-align: center; margin-bottom: 6px; }
        .modal .sub { text-align: center; color: var(--muted); font-size: 14px; margin-bottom: 24px; }
        .form-group { margin-bottom: 16px; }
        .form-group label { display: block; font-size: 13px; font-weight: 500; color: var(--muted); margin-bottom: 6px; }
        .form-group input {
            width: 100%; padding: 13px 16px; border-radius: var(--radius-sm);
            border: 1px solid rgba(212, 168, 75, 0.2); background: var(--bg-elevated);
            color: var(--primary); font-size: 15px; outline: none; transition: var(--transition);
        }
        .form-group input:focus { border-color: var(--gold); box-shadow: 0 0 0 3px rgba(212, 168, 75, 0.12); }
        .creds-box {
            background: rgba(212, 168, 75, 0.08); border: 1px dashed rgba(212, 168, 75, 0.3);
            border-radius: var(--radius-sm); padding: 12px 14px; margin-bottom: 18px;
            font-size: 13px; color: var(--muted); line-height: 1.5;
        }
        .creds-box strong { color: var(--gold); }
        .modal .btn { width: 100%; margin-top: 4px; }
        .login-error { color: #ff8a80; font-size: 13px; text-align: center; margin-top: 12px; display: none; }
        .login-success { color: #a5d6a7; font-size: 14px; text-align: center; margin-top: 12px; display: none; }

        @media (max-width: 1200px) {
            .products-grid, .gallery-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
        }
        @media (max-width: 992px) {
            .hero h1 { font-size: 38px; }
            .hero { min-height: 440px; margin: 16px 16px 0; padding: 48px 0; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 260px; }
            .deal-wrap .deal-content { padding: 28px 30px; }
            .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; }
            .search-wrap { min-width: 140px; }
            .gallery-grid { grid-template-columns: repeat(2, 1fr); }
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
            .search-wrap { min-width: 100px; }
            .testimonial-card { flex: 0 0 280px; }
            .section { padding: 40px 0; }
        }
        @media (max-width: 480px) {
            .products-grid, .categories-grid, .gallery-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .hero { margin: 10px 10px 0; min-height: 360px; padding: 32px 0; }
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
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#"><i class="fas fa-om"></i><span>Vara<span class="accent">nasi</span></span></a>
            </div>
            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#gallery"><i class="fas fa-images"></i> Posters</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Shop</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Merch</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deal</a></li>
                </ul>
            </nav>
            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap">
                    <input type="search" id="searchInput" placeholder="Search merch..." />
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <div class="user-chip" id="userChip">
                        <div class="avatar">R</div>
                        <span>Rudhra - 2027 Comminggggggggggggggggggggggggg</span>
                    </div>
                    <button class="icon-btn" id="loginBtn" title="Login"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#gallery"><i class="fas fa-images"></i> Posters</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Shop</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Merch</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deal</a></li>
                    <li><a href="#" id="mobileLogin"><i class="far fa-user"></i> Login</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <div class="badge"><i class="fas fa-dharmachakra"></i> SS Rajamouli × Mahesh Babu</div>
                <h1>Enter the World of<br><span>Rudhra Varanasiiiiiiii</span></h1>
                <p>Official-inspired merch, posters & collectibles from the epic adventure spanning Varanasi, Africa & beyond. April 7, 2027.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Collection</button>
                    <button class="btn btn-ghost" id="viewGallery"><i class="fas fa-images"></i> View Posters</button>
                </div>
            </div>
        </section>

        <section class="section" id="gallery">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Official Posters & Stills</h2>
                        <p>Rudhra • From the sets of Varanasi</p>
                    </div>
                </div>
                <div class="gallery-grid">
                    <div class="gallery-card">
                        <img src="https://pbs.twimg.com/media/G50-3tzW4AA7QNw.jpg" alt="Mahesh Babu as Rudhra Official Poster" loading="lazy">
                        <div class="caption">Rudhra First Look <span>Official Character Poster</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://pbs.twimg.com/media/G5zsHkoXcAECjHK.jpg" alt="Varanasi First Poster" loading="lazy">
                        <div class="caption">Varanasi Title Poster <span>GlobeTrotter Reveal</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://pbs.twimg.com/media/G5zv4aZXgAAipyK.jpg" alt="Rudhra Character Poster" loading="lazy">
                        <div class="caption">Character Poster <span>Mahesh Babu as Rudhra</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://pbs.twimg.com/media/G55z071W4AE3Ayc.jpg" alt="Varanasi Official Poster" loading="lazy">
                        <div class="caption">Official Poster <span>Coming 2027</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?auto=format&fit=crop&w=800&q=80" alt="African Savanna" loading="lazy">
                        <div class="caption">Africa Schedule <span>Maasai Mara & Kilimanjaro</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://images.unsplash.com/photo-1548013146-72479768bada?auto=format&fit=crop&w=800&q=80" alt="Varanasi Ghats" loading="lazy">
                        <div class="caption">Sacred City <span>Varanasi Ghats</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://images.unsplash.com/photo-1489392191049-fc10c97e64b6?auto=format&fit=crop&w=800&q=80" alt="Explorer" loading="lazy">
                        <div class="caption">Explorer Spirit <span>Rudhra's Journey</span></div>
                    </div>
                    <div class="gallery-card">
                        <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?auto=format&fit=crop&w=800&q=80" alt="Epic Landscape" loading="lazy">
                        <div class="caption">Epic Scale <span>Across Continents</span></div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Shop Categories</h2>
                        <p>Merch inspired by the greatest adventure</p>
                    </div>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Trending Merch</h2>
                        <p>Wear the legend. Collect the story.</p>
                    </div>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>⚡ Limited Drop</h2>
                        <p>Rudhra Collector Box — while stock lasts</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://pbs.twimg.com/media/G50-3tzW4AA7QNw.jpg" alt="Rudhra Collector Edition" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Collector Edition</span>
                        <h3>Rudhra First Look Box</h3>
                        <p class="desc">Premium framed poster + enamel pin + art card set featuring Mahesh Babu as Rudhra. Limited numbered edition.</p>
                        <div><span class="price-big">$79 <span class="old">$129</span></span></div>
                        <p class="stock">Only <strong>47</strong> boxes remaining</p>
                        <div class="timer-grid">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2>Fan Voices</h2>
                        <p>From the community that waits for 2027</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3>Stay on the Path</h3>
                        <p>Early access to drops, exclusive art & film updates</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email address" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-om"></i><span>Vara<span class="accent">nasi</span></span></div>
                    <p>Fan-inspired store celebrating SS Rajamouli’s Varanasi starring Mahesh Babu. Not an official production store.</p>
                    <div class="socials">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-x-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Explore</h5>
                    <ul>
                        <li><a href="#gallery">Posters</a></li>
                        <li><a href="#products">Merch</a></li>
                        <li><a href="#deals">Limited Drops</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> Varanasi Fan Store. Unofficial fan demo. Film © Sri Durga Arts / Showing Business.
            </div>
        </div>
    </footer>

    <div class="modal-overlay" id="loginModal">
        <div class="modal">
            <button class="close-btn" id="closeModal"><i class="fas fa-times"></i></button>
            <div class="modal-icon"><i class="fas fa-user-shield"></i></div>
            <h3>Enter the Circle</h3>
            <p class="sub">Sign in for exclusive drops</p>
            <div class="creds-box">
                <strong>Demo credentials</strong><br>
                Email: <strong>fan@varanasi.com</strong><br>
                Password: <strong>Rudhra2027</strong>
            </div>
            <form id="loginForm">
                <div class="form-group">
                    <label for="loginEmail">Email</label>
                    <input type="email" id="loginEmail" placeholder="fan@varanasi.com" required>
                </div>
                <div class="form-group">
                    <label for="loginPass">Password</label>
                    <input type="password" id="loginPass" placeholder="••••••••" required>
                </div>
                <button type="submit" class="btn btn-primary">Sign In</button>
                <div class="login-error" id="loginError">Invalid credentials. Use the demo ones above.</div>
                <div class="login-success" id="loginSuccess">Welcome back, explorer!</div>
            </form>
        </div>
    </div>

    <script>
        const CATEGORIES = [
            { id: 'apparel', name: 'Apparel', icon: 'fa-tshirt', count: 36 },
            { id: 'posters', name: 'Posters', icon: 'fa-image', count: 18 },
            { id: 'collectibles', name: 'Collectibles', icon: 'fa-gem', count: 24 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 29 },
            { id: 'art', name: 'Art Prints', icon: 'fa-palette', count: 15 },
            { id: 'gear', name: 'Field Gear', icon: 'fa-compass', count: 12 }
        ];
        const PRODUCTS = [
            { id: 1, title: 'Rudhra First Look Poster (Framed)', price: 49, oldPrice: 69, rating: 5, reviews: 214, badge: 'New',
                img: 'https://pbs.twimg.com/media/G50-3tzW4AA7QNw.jpg', category: 'Posters' },
            { id: 2, title: 'Varanasi Title Tee', price: 38, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80', category: 'Apparel' },
            { id: 3, title: 'Trishul Enamel Pin Set', price: 24, oldPrice: 32, rating: 5, reviews: 156, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=600&q=80', category: 'Collectibles' },
            { id: 4, title: 'Explorer Cargo Pants', price: 89, rating: 4, reviews: 73, badge: '',
                img: 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?auto=format&fit=crop&w=600&q=80', category: 'Apparel' },
            { id: 5, title: 'Character Poster - Rudhra', price: 29, rating: 5, reviews: 98, badge: 'New',
                img: 'https://pbs.twimg.com/media/G5zv4aZXgAAipyK.jpg', category: 'Posters' },
            { id: 6, title: 'Om Meditation Bracelet', price: 28, rating: 5, reviews: 142, badge: '',
                img: 'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 7, title: 'Adventure Daypack', price: 98, oldPrice: 129, rating: 4, reviews: 87, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'Field Gear' },
            { id: 8, title: 'Epic Landscape Art Print', price: 45, rating: 5, reviews: 64, badge: '',
                img: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?auto=format&fit=crop&w=600&q=80', category: 'Art Prints' }
        ];
        const TESTIMONIALS = [
            { name: 'Arjun Mehta', role: 'Superfan', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'The Rudhra poster is framed in my room. Quality is insane.', stars: 5 },
            { name: 'Priya Nair', role: 'Collector', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Bought the collector box the second it dropped. Pins are beautiful.', stars: 5 },
            { name: 'Rohan Desai', role: 'Fan Club', avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80',
                text: 'Finally merch that matches the scale of the film.', stars: 5 },
            { name: 'Ananya Rao', role: 'Design Lover', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'Art prints and packaging feel premium.', stars: 5 }
        ];

        let cartCount = 0;
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const testimonialsList = document.getElementById('testimonialsList');
        const loginModal = document.getElementById('loginModal');
        const loginBtn = document.getElementById('loginBtn');
        const closeModal = document.getElementById('closeModal');
        const loginForm = document.getElementById('loginForm');
        const userChip = document.getElementById('userChip');

        function escapeHtml(t) {
            return String(t).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
        }
        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }
        function addToCart(id, btn) {
            cartCount++;
            updateCartCount();
            if (btn) {
                const o = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.classList.add('added');
                setTimeout(() => { btn.innerHTML = o; btn.classList.remove('added'); }, 1500);
            }
        }
        function filterProducts(q) {
            q = String(q||'').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
        }
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(c => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `<div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} items</div>`;
                el.onclick = () => { searchInput.value = c.name; filterProducts(c.name); document.getElementById('products').scrollIntoView({behavior:'smooth'}); };
                categoriesGrid.appendChild(el);
            });
        }
        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) { productsGrid.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted)">No items found.</p>'; return; }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badge = p.badge ? `<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>` : '';
                const old = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5-Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badge}
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row"><span class="price">$${p.price}</span>${old}</div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>`;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(b => b.onclick = e => { e.stopPropagation(); addToCart(+b.dataset.id, b); });
        }
        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `<div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author"><img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}">
                    <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div></div>`;
                testimonialsList.appendChild(el);
            });
        }

        (function() {
            const target = new Date(Date.now() + (21*60+33)*60*1000);
            function tick() {
                const d = target - new Date();
                if (d <= 0) return;
                document.getElementById('dealDays').textContent = Math.floor(d/(24*3600*1000));
                document.getElementById('dealHours').textContent = String(Math.floor((d%(24*3600*1000))/(3600*1000))).padStart(2,'0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((d%(3600*1000))/(60*1000))).padStart(2,'0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((d%(60*1000))/1000)).padStart(2,'0');
            }
            tick(); setInterval(tick, 1000);
        })();

        searchBtn.onclick = () => filterProducts(searchInput.value);
        searchInput.onkeydown = e => { if (e.key === 'Enter') filterProducts(e.target.value); };
        mobileToggle.onclick = () => {
            const open = mobileMenu.style.display === 'block';
            mobileMenu.style.display = open ? 'none' : 'block';
            mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        };
        mobileMenu.querySelectorAll('a').forEach(a => a.onclick = () => {
            mobileMenu.style.display = 'none';
            mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
        });
        document.getElementById('shopNow').onclick = () => document.getElementById('products').scrollIntoView({behavior:'smooth'});
        document.getElementById('viewGallery').onclick = () => document.getElementById('gallery').scrollIntoView({behavior:'smooth'});
        document.getElementById('buyDeal').onclick = function() {
            cartCount++; updateCartCount();
            const o = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => { this.innerHTML = o; this.style.background = ''; }, 1600);
        };
        document.getElementById('newsletterForm').onsubmit = e => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email.includes('@')) { msg.textContent = 'Please enter a valid email.'; msg.style.color = '#ff8a80'; return; }
            msg.textContent = 'Welcome to the circle!'; msg.style.color = '#a5d6a7';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.textContent = '', 3500);
        };
        document.getElementById('cartBtn').onclick = () => alert(`🛒 Cart has ${cartCount} item${cartCount!==1?'s':''}.`);
        document.getElementById('year').textContent = new Date().getFullYear();

        function openLogin() { loginModal.classList.add('open'); document.getElementById('loginError').style.display='none'; document.getElementById('loginSuccess').style.display='none'; }
        function closeLogin() { loginModal.classList.remove('open'); }
        loginBtn.onclick = openLogin;
        document.getElementById('mobileLogin') && (document.getElementById('mobileLogin').onclick = openLogin);
        closeModal.onclick = closeLogin;
        loginModal.onclick = e => { if (e.target === loginModal) closeLogin(); };
        loginForm.onsubmit = e => {
            e.preventDefault();
            const email = document.getElementById('loginEmail').value.trim().toLowerCase();
            const pass = document.getElementById('loginPass').value;
            if (email === 'fan@varanasi.com' && pass === 'Rudhra2027') {
                document.getElementById('loginError').style.display = 'none';
                document.getElementById('loginSuccess').style.display = 'block';
                userChip.classList.add('visible');
                loginBtn.style.display = 'none';
                setTimeout(() => { closeLogin(); loginForm.reset(); document.getElementById('loginSuccess').style.display='none'; }, 1200);
            } else {
                document.getElementById('loginSuccess').style.display = 'none';
                document.getElementById('loginError').style.display = 'block';
            }
        };

        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();
        console.log('Varanasi Store ready — Login: fan@varanasi.com / Rudhra2027');
    </script>
</body>
</html>
