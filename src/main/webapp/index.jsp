<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · elevated e‑commerce</title>
  <!-- Google Font & Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & base (enhanced) ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f8f7f4;
      color: #18181b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    img {
      max-width: 100%;
      display: block;
    }

    button {
      font-family: inherit;
      cursor: pointer;
      border: none;
      background: none;
      color: inherit;
    }

    input {
      font-family: inherit;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- buttons (refined) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 100px;
      font-weight: 600;
      font-size: 0.95rem;
      transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
      border: 2px solid transparent;
      background: #18181b;
      color: white;
      letter-spacing: -0.01em;
    }

    .btn-primary {
      background: #d46a4a;
      border-color: #d46a4a;
      color: #fff;
      box-shadow: 0 4px 14px rgba(212, 106, 74, 0.25);
    }

    .btn-primary:hover {
      background: #b85538;
      border-color: #b85538;
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(212, 106, 74, 0.3);
    }

    .btn-outline {
      background: transparent;
      color: #18181b;
      border-color: rgba(24, 24, 27, 0.15);
    }

    .btn-outline:hover {
      background: #18181b;
      color: #fff;
      border-color: #18181b;
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.06);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.10);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(4px);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.22);
      border-color: rgba(255, 255, 255, 0.3);
      transform: translateY(-3px);
    }

    .btn-sm {
      padding: 6px 16px;
      font-size: 0.8rem;
    }

    /* ----- header (cleaner, more air) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 60;
      background: rgba(255, 255, 252, 0.88);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(24, 24, 27, 0.04);
      transition: background 0.2s;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 1.5rem;
      letter-spacing: -0.4px;
      color: #18181b;
      text-decoration: none;
    }

    .brand i {
      color: #d46a4a;
      font-size: 1.7rem;
    }

    .brand .accent {
      color: #d46a4a;
    }

    .nav-desktop {
      display: flex;
      gap: 8px;
      list-style: none;
    }

    .nav-desktop li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #5e5e6b;
      transition: all 0.15s;
      display: flex;
      align-items: center;
      gap: 8px;
      text-decoration: none;
    }

    .nav-desktop li a:hover,
    .nav-desktop li a.active {
      background: #eae8e2;
      color: #18181b;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #eae8e2;
      border-radius: 100px;
      padding: 0 14px 0 20px;
      border: 2px solid transparent;
      transition: all 0.2s;
      min-width: 200px;
    }

    .search-wrap:focus-within {
      border-color: #d46a4a;
      background: #ffffff;
      box-shadow: 0 0 0 4px rgba(212, 106, 74, 0.08);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 0.9rem;
      color: #18181b;
    }

    .search-wrap input::placeholder {
      color: #8f8f9b;
    }

    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: #5e5e6b;
      transition: 0.2s;
      font-size: 1rem;
    }

    .search-wrap button:hover {
      color: #d46a4a;
    }

    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.15rem;
      color: #5e5e6b;
      transition: 0.2s;
      position: relative;
    }

    .icon-btn:hover {
      background: #eae8e2;
      color: #18181b;
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: #d46a4a;
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
      box-shadow: 0 2px 8px rgba(212, 106, 74, 0.3);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: #eae8e2;
      font-size: 1.2rem;
      transition: 0.2s;
    }

    .mobile-toggle:hover {
      background: #d46a4a;
      color: white;
    }

    #mobileMenu {
      display: none;
      background: #fffffffa;
      padding: 12px 0 20px;
      border-top: 1px solid rgba(24, 24, 27, 0.04);
      backdrop-filter: blur(8px);
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
      gap: 14px;
      padding: 14px 16px;
      border-radius: 16px;
      font-weight: 500;
      color: #18181b;
      transition: 0.15s;
      text-decoration: none;
    }

    #mobileMenu ul li a:hover {
      background: #eae8e2;
    }

    /* ----- hero (more refined) ----- */
    .hero {
      background: linear-gradient(145deg, #18181b 0%, #2b2b35 100%);
      border-radius: 32px;
      margin: 24px 24px 0;
      padding: 64px 0;
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 60px rgba(0,0,0,0.08);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.20;
      z-index: 0;
    }

    .hero .container {
      position: relative;
      z-index: 1;
    }

    .hero .badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: rgba(212, 106, 74, 0.2);
      color: #e68a6e;
      padding: 6px 18px;
      border-radius: 100px;
      font-weight: 600;
      font-size: 0.75rem;
      letter-spacing: 0.3px;
      margin-bottom: 18px;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(212, 106, 74, 0.15);
    }

    .hero h1 {
      font-weight: 800;
      font-size: 3.6rem;
      letter-spacing: -0.03em;
      color: white;
      max-width: 620px;
      line-height: 1.05;
      margin-bottom: 18px;
    }

    .hero p {
      color: rgba(255, 255, 255, 0.75);
      font-size: 1.15rem;
      max-width: 480px;
      margin-bottom: 32px;
      line-height: 1.6;
    }

    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ----- section (refined) ----- */
    .section {
      padding: 56px 0 40px;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
      margin-bottom: 32px;
    }

    .section-header h2 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .section-header p {
      color: #5e5e6b;
      margin-top: 4px;
    }

    .view-all {
      color: #d46a4a;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: 0.25s;
      white-space: nowrap;
      text-decoration: none;
    }

    .view-all:hover {
      gap: 16px;
      color: #b85538;
    }

    /* ----- categories (cleaner) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }

    .cat-card {
      background: white;
      border-radius: 24px;
      padding: 28px 12px;
      text-align: center;
      box-shadow: 0 4px 20px rgba(24, 24, 27, 0.03);
      transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
      border: 2px solid transparent;
      cursor: default;
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 16px 40px rgba(24, 24, 27, 0.06);
      border-color: #f0e3db;
    }

    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: #f2e6e0;
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 1.6rem;
      color: #d46a4a;
      transition: 0.3s;
    }

    .cat-card:hover .icon-wrap {
      background: #d46a4a;
      color: white;
      transform: scale(1.02);
    }

    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .cat-card .count {
      color: #5e5e6b;
      font-size: 0.8rem;
      margin-top: 4px;
    }

    /* ----- products (elevated) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 20px rgba(24, 24, 27, 0.03);
      transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 48px rgba(24, 24, 27, 0.06);
      border-color: #f0e3db;
    }

    .product-card .img-wrap {
      background: #f1efea;
      aspect-ratio: 1/1;
      position: relative;
      overflow: hidden;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.5s ease;
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.04);
    }

    .product-card .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: #d46a4a;
      color: white;
      font-weight: 700;
      font-size: 0.65rem;
      padding: 4px 14px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }

    .product-card .badge.sale {
      background: #e9c46a;
      color: #18181b;
    }

    .product-card .wish-btn {
      position: absolute;
      top: 16px;
      right: 16px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(6px);
      display: grid;
      place-items: center;
      color: #5e5e6b;
      transition: 0.2s;
      font-size: 1rem;
      border: 1px solid rgba(255,255,255,0.2);
    }

    .product-card .wish-btn:hover {
      background: white;
      color: #d46a4a;
      transform: scale(1.08);
    }

    .product-card .body {
      padding: 18px 18px 6px;
      flex: 1;
    }

    .product-card .body .category-tag {
      font-size: 0.7rem;
      font-weight: 600;
      color: #8f8f9b;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .product-card .body h5 {
      font-size: 1rem;
      font-weight: 600;
      margin: 6px 0 8px;
      line-height: 1.3;
    }

    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 4px 0 6px;
    }

    .product-card .price {
      font-weight: 700;
      font-size: 1.15rem;
    }

    .product-card .old-price {
      color: #8f8f9b;
      text-decoration: line-through;
      font-size: 0.85rem;
    }

    .product-card .rating {
      font-size: 0.8rem;
      color: #f5a623;
    }

    .product-card .rating span {
      color: #5e5e6b;
      margin-left: 6px;
    }

    .product-card .footer {
      padding: 0 18px 18px;
    }

    .product-card .footer .add-btn {
      width: 100%;
      padding: 12px 0;
      border-radius: 60px;
      background: #18181b;
      color: white;
      font-weight: 600;
      font-size: 0.85rem;
      transition: 0.25s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .product-card .footer .add-btn:hover {
      background: #d46a4a;
      transform: scale(1.02);
      box-shadow: 0 8px 20px rgba(212, 106, 74, 0.2);
    }

    .product-card .footer .add-btn.added {
      background: #2a9d8f;
    }

    /* ----- deal (cleaner) ----- */
    .deal-wrap {
      display: flex;
      background: white;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: 0 8px 32px rgba(24, 24, 27, 0.04);
    }

    .deal-wrap .deal-img {
      flex: 0 0 46%;
      min-height: 280px;
      background: #f1efea;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      padding: 40px 44px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-wrap .deal-content .tag {
      background: #e9c46a;
      color: #18181b;
      font-weight: 700;
      font-size: 0.7rem;
      padding: 6px 18px;
      border-radius: 60px;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 12px;
    }

    .deal-wrap .deal-content h3 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .deal-wrap .deal-content .desc {
      color: #5e5e6b;
      margin: 6px 0 14px;
    }

    .deal-wrap .price-big {
      font-size: 2.2rem;
      font-weight: 800;
    }

    .deal-wrap .price-big .old {
      font-size: 1.2rem;
      font-weight: 400;
      color: #8f8f9b;
      text-decoration: line-through;
      margin-left: 12px;
    }

    .deal-wrap .stock {
      font-size: 0.9rem;
      color: #5e5e6b;
      margin: 4px 0 16px;
    }

    .deal-wrap .stock strong {
      color: #d46a4a;
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 12px 0 20px;
    }

    .timer-box {
      background: #18181b;
      color: white;
      padding: 12px 20px;
      border-radius: 16px;
      min-width: 72px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1.2;
    }

    .timer-box .label {
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      opacity: 0.6;
    }

    /* ----- testimonials (refined) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 6px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: #d9d4cc;
      border-radius: 20px;
    }

    .testimonial-card {
      flex: 0 0 340px;
      background: white;
      border-radius: 24px;
      padding: 28px 30px;
      box-shadow: 0 4px 20px rgba(24, 24, 27, 0.03);
      scroll-snap-align: start;
      transition: 0.2s;
      border: 1px solid rgba(24,24,27,0.02);
    }

    .testimonial-card:hover {
      box-shadow: 0 16px 40px rgba(24, 24, 27, 0.05);
    }

    .testimonial-card .stars {
      color: #f5a623;
      font-size: 1rem;
      letter-spacing: 3px;
      margin-bottom: 10px;
    }

    .testimonial-card blockquote {
      font-style: italic;
      font-size: 0.95rem;
      line-height: 1.6;
      margin-bottom: 16px;
      color: #18181b;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: #eae8e2;
    }

    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: #5e5e6b;
    }

    /* ----- newsletter (softer) ----- */
    .newsletter-wrap {
      background: linear-gradient(145deg, #18181b 0%, #2b2b35 100%);
      border-radius: 32px;
      padding: 52px 56px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 28px;
      box-shadow: 0 16px 48px rgba(0,0,0,0.06);
    }

    .newsletter-wrap .text h3 {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .newsletter-wrap .text p {
      opacity: 0.65;
      font-size: 0.95rem;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 180px;
      padding: 14px 22px;
      border-radius: 100px;
      border: 0;
      background: rgba(255, 255, 255, 0.07);
      color: white;
      outline: 2px solid transparent;
      transition: 0.2s;
      font-size: 0.95rem;
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.4);
    }

    .newsletter-wrap form input:focus {
      outline-color: #d46a4a;
      background: rgba(255, 255, 255, 0.14);
    }

    .newsletter-wrap form .btn {
      background: #d46a4a;
      border-color: #d46a4a;
      color: white;
      padding: 14px 32px;
    }

    .newsletter-wrap form .btn:hover {
      background: #b85538;
      border-color: #b85538;
      transform: translateY(-2px);
    }

    #newsletterMsg {
      margin-top: 12px;
      font-size: 0.9rem;
      width: 100%;
      opacity: 0.9;
    }

    /* ----- footer (cleaner) ----- */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid rgba(24, 24, 27, 0.04);
      margin-top: 8px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 32px;
    }

    .footer-grid .brand-col .brand {
      font-size: 1.4rem;
      margin-bottom: 10px;
    }

    .footer-grid .brand-col p {
      color: #5e5e6b;
      font-size: 0.9rem;
      max-width: 280px;
      line-height: 1.7;
    }

    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 18px;
    }

    .footer-grid .brand-col .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: #eae8e2;
      display: grid;
      place-items: center;
      color: #5e5e6b;
      transition: 0.2s;
      font-size: 1rem;
      text-decoration: none;
    }

    .footer-grid .brand-col .socials a:hover {
      background: #d46a4a;
      color: white;
      transform: translateY(-3px);
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 0.95rem;
      margin-bottom: 14px;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .footer-grid .col ul li a {
      color: #5e5e6b;
      font-size: 0.9rem;
      transition: 0.2s;
      text-decoration: none;
    }

    .footer-grid .col ul li a:hover {
      color: #d46a4a;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid rgba(24, 24, 27, 0.04);
      color: #8f8f9b;
      font-size: 0.8rem;
    }

    /* ----- responsive (enhanced) ----- */
    @media (max-width: 1100px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
    }

    @media (max-width: 900px) {
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 32px 30px; }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
      .hero h1 { font-size: 2.8rem; }
    }

    @media (max-width: 768px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero { margin: 12px 12px 0; padding: 40px 0; border-radius: 24px; }
      .hero h1 { font-size: 2.2rem; }
      .search-wrap { min-width: 120px; }
      .header-inner { flex-wrap: nowrap; }
      .newsletter-wrap { flex-direction: column; text-align: center; padding: 36px 28px; }
      .newsletter-wrap form { max-width: 100%; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .deal-wrap .deal-content h3 { font-size: 1.6rem; }
    }

    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .container { padding: 0 16px; }
      .hero h1 { font-size: 1.8rem; }
      .hero .actions .btn { padding: 10px 18px; font-size: 0.8rem; }
      .product-card .body h5 { font-size: 0.8rem; }
      .product-card .price { font-size: 0.95rem; }
      .timer-box { min-width: 56px; padding: 8px 12px; }
      .timer-box .num { font-size: 1.3rem; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu">
          em class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          em class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav>
        <ul class="nav-desktop">
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero" aria-label="promo banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories — free shipping on your first order.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- categories -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div><h2>Browse Categories</h2><p>Find exactly what you need</p></div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- products -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div><h2>Trending Now</h2><p>Popular picks from our community</p></div>
          <
