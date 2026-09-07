<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · clean e‑commerce</title>
  <!-- Google Font & Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #fafaf8;
      color: #1a1a2e;
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

    /* ----- buttons ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 10px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      transition: all 0.2s ease;
      border: 2px solid transparent;
      background: #1a1a2e;
      color: white;
    }

    .btn-primary {
      background: #e07a5f;
      border-color: #e07a5f;
      color: #fff;
    }

    .btn-primary:hover {
      background: #c05a3e;
      border-color: #c05a3e;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(224, 122, 95, 0.25);
    }

    .btn-outline {
      background: transparent;
      color: #1a1a2e;
      border-color: rgba(26, 26, 46, 0.15);
    }

    .btn-outline:hover {
      background: #1a1a2e;
      color: #fff;
      border-color: #1a1a2e;
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.2);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.22);
      border-color: rgba(255, 255, 255, 0.35);
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 6px 16px;
      font-size: 0.8rem;
    }

    /* ----- header ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(26, 26, 46, 0.04);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 1.4rem;
      letter-spacing: -0.3px;
      color: #1a1a2e;
    }

    .brand i {
      color: #e07a5f;
      font-size: 1.6rem;
    }

    .brand .accent {
      color: #e07a5f;
    }

    .nav-desktop {
      display: flex;
      gap: 4px;
      list-style: none;
    }

    .nav-desktop li a {
      padding: 8px 16px;
      border-radius: 30px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #6b6b7a;
      transition: all 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .nav-desktop li a:hover,
    .nav-desktop li a.active {
      background: #f0efed;
      color: #1a1a2e;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #f0efed;
      border-radius: 60px;
      padding: 0 12px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 180px;
    }

    .search-wrap:focus-within {
      border-color: #e07a5f;
      background: #fff;
      box-shadow: 0 0 0 3px rgba(224, 122, 95, 0.08);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 0.9rem;
      color: #1a1a2e;
    }

    .search-wrap input::placeholder {
      color: #a0a0b0;
    }

    .search-wrap button {
      padding: 8px 0 8px 8px;
      color: #6b6b7a;
      transition: 0.2s;
      font-size: 1rem;
    }

    .search-wrap button:hover {
      color: #e07a5f;
    }

    .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.1rem;
      color: #6b6b7a;
      transition: 0.2s;
      position: relative;
    }

    .icon-btn:hover {
      background: #f0efed;
      color: #1a1a2e;
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #e07a5f;
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: #f0efed;
      font-size: 1.2rem;
      transition: 0.2s;
    }

    .mobile-toggle:hover {
      background: #e07a5f;
      color: white;
    }

    #mobileMenu {
      display: none;
      background: white;
      padding: 12px 0 20px;
      border-top: 1px solid rgba(26, 26, 46, 0.04);
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
      border-radius: 12px;
      font-weight: 500;
      color: #1a1a2e;
      transition: 0.15s;
    }

    #mobileMenu ul li a:hover {
      background: #f0efed;
    }

    /* ----- hero ----- */
    .hero {
      background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
      border-radius: 24px;
      margin: 20px 24px 0;
      padding: 56px 0;
      position: relative;
      overflow: hidden;
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.3;
      z-index: 0;
    }

    .hero .container {
      position: relative;
      z-index: 1;
    }

    .hero .badge {
      display: inline-block;
      background: rgba(224, 122, 95, 0.2);
      color: #e07a5f;
      padding: 4px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.75rem;
      letter-spacing: 0.3px;
      margin-bottom: 14px;
    }

    .hero h1 {
      font-family: 'Inter', sans-serif;
      font-weight: 800;
      font-size: 3.2rem;
      letter-spacing: -0.02em;
      color: white;
      max-width: 600px;
      line-height: 1.1;
      margin-bottom: 16px;
    }

    .hero p {
      color: rgba(255, 255, 255, 0.8);
      font-size: 1.1rem;
      max-width: 480px;
      margin-bottom: 28px;
      line-height: 1.6;
    }

    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* ----- section ----- */
    .section {
      padding: 48px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }

    .section-header h2 {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }

    .section-header p {
      color: #6b6b7a;
      margin-top: 2px;
    }

    .view-all {
      color: #e07a5f;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
      white-space: nowrap;
    }

    .view-all:hover {
      gap: 12px;
      color: #c05a3e;
    }

    /* ----- categories ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }

    .cat-card {
      background: white;
      border-radius: 20px;
      padding: 24px 12px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(26, 26, 46, 0.04);
      transition: all 0.2s;
      border: 2px solid transparent;
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 12px 32px rgba(26, 26, 46, 0.08);
      border-color: #f4d0c4;
    }

    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      background: #f4d0c4;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 1.5rem;
      color: #e07a5f;
      transition: 0.2s;
    }

    .cat-card:hover .icon-wrap {
      background: #e07a5f;
      color: white;
    }

    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .cat-card .count {
      color: #6b6b7a;
      font-size: 0.8rem;
      margin-top: 4px;
    }

    /* ----- products ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .product-card {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(26, 26, 46, 0.04);
      transition: 0.25s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 12px 36px rgba(26, 26, 46, 0.08);
      border-color: #f4d0c4;
    }

    .product-card .img-wrap {
      background: #f0efed;
      aspect-ratio: 1/1;
      position: relative;
      overflow: hidden;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }

    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #e07a5f;
      color: white;
      font-weight: 700;
      font-size: 0.65rem;
      padding: 4px 12px;
      border-radius: 30px;
      letter-spacing: 0.3px;
    }

    .product-card .badge.sale {
      background: #e9c46a;
      color: #1a1a2e;
    }

    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      color: #6b6b7a;
      transition: 0.2s;
      font-size: 1rem;
    }

    .product-card .wish-btn:hover {
      background: white;
      color: #e07a5f;
      transform: scale(1.1);
    }

    .product-card .body {
      padding: 14px 16px 10px;
      flex: 1;
    }

    .product-card .body .category-tag {
      font-size: 0.7rem;
      font-weight: 600;
      color: #a0a0b0;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }

    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      margin: 4px 0 6px;
      line-height: 1.3;
    }

    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin: 4px 0 6px;
    }

    .product-card .price {
      font-weight: 700;
      font-size: 1.1rem;
    }

    .product-card .old-price {
      color: #a0a0b0;
      text-decoration: line-through;
      font-size: 0.85rem;
    }

    .product-card .rating {
      font-size: 0.8rem;
      color: #f5a623;
    }

    .product-card .rating span {
      color: #6b6b7a;
      margin-left: 4px;
    }

    .product-card .footer {
      padding: 0 16px 16px;
    }

    .product-card .footer .add-btn {
      width: 100%;
      padding: 10px 0;
      border-radius: 40px;
      background: #1a1a2e;
      color: white;
      font-weight: 600;
      font-size: 0.85rem;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .product-card .footer .add-btn:hover {
      background: #e07a5f;
      transform: scale(1.02);
    }

    .product-card .footer .add-btn.added {
      background: #2a9d8f;
    }

    /* ----- deal ----- */
    .deal-wrap {
      display: flex;
      background: white;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 20px rgba(26, 26, 46, 0.04);
    }

    .deal-wrap .deal-img {
      flex: 0 0 46%;
      min-height: 280px;
      background: #f0efed;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      padding: 36px 40px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-wrap .deal-content .tag {
      background: #e9c46a;
      color: #1a1a2e;
      font-weight: 700;
      font-size: 0.7rem;
      padding: 4px 14px;
      border-radius: 60px;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 10px;
    }

    .deal-wrap .deal-content h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }

    .deal-wrap .deal-content .desc {
      color: #6b6b7a;
      margin: 6px 0 12px;
    }

    .deal-wrap .price-big {
      font-size: 2rem;
      font-weight: 800;
    }

    .deal-wrap .price-big .old {
      font-size: 1.2rem;
      font-weight: 400;
      color: #a0a0b0;
      text-decoration: line-through;
      margin-left: 10px;
    }

    .deal-wrap .stock {
      font-size: 0.9rem;
      color: #6b6b7a;
      margin: 2px 0 14px;
    }

    .deal-wrap .stock strong {
      color: #e07a5f;
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 8px 0 18px;
    }

    .timer-box {
      background: #1a1a2e;
      color: white;
      padding: 10px 16px;
      border-radius: 12px;
      min-width: 68px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 1.6rem;
      font-weight: 700;
      line-height: 1.2;
    }

    .timer-box .label {
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      opacity: 0.7;
    }

    /* ----- testimonials ----- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: #f4d0c4;
      border-radius: 20px;
    }

    .testimonial-card {
      flex: 0 0 320px;
      background: white;
      border-radius: 20px;
      padding: 24px 26px;
      box-shadow: 0 4px 16px rgba(26, 26, 46, 0.04);
      scroll-snap-align: start;
      transition: 0.2s;
    }

    .testimonial-card:hover {
      box-shadow: 0 12px 32px rgba(26, 26, 46, 0.08);
    }

    .testimonial-card .stars {
      color: #f5a623;
      font-size: 1rem;
      letter-spacing: 2px;
      margin-bottom: 8px;
    }

    .testimonial-card blockquote {
      font-style: italic;
      font-size: 0.95rem;
      line-height: 1.5;
      margin-bottom: 14px;
      color: #1a1a2e;
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
      background: #f0efed;
    }

    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.9rem;
    }

    .testimonial-card .author .role {
      font-size: 0.8rem;
      color: #6b6b7a;
    }

    /* ----- newsletter ----- */
    .newsletter-wrap {
      background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
      border-radius: 24px;
      padding: 44px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }

    .newsletter-wrap .text h3 {
      font-size: 1.6rem;
      font-weight: 700;
    }

    .newsletter-wrap .text p {
      opacity: 0.7;
      font-size: 0.95rem;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 180px;
      padding: 12px 20px;
      border-radius: 60px;
      border: 0;
      background: rgba(255, 255, 255, 0.08);
      color: white;
      outline: 2px solid transparent;
      transition: 0.2s;
      font-size: 0.95rem;
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.45);
    }

    .newsletter-wrap form input:focus {
      outline-color: #e07a5f;
      background: rgba(255, 255, 255, 0.14);
    }

    .newsletter-wrap form .btn {
      background: #e07a5f;
      border-color: #e07a5f;
      color: white;
      padding: 12px 28px;
    }

    .newsletter-wrap form .btn:hover {
      background: #c05a3e;
      border-color: #c05a3e;
    }

    #newsletterMsg {
      margin-top: 10px;
      font-size: 0.9rem;
      width: 100%;
      opacity: 0.9;
    }

    /* ----- footer ----- */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(26, 26, 46, 0.04);
      margin-top: 8px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }

    .footer-grid .brand-col .brand {
      font-size: 1.3rem;
      margin-bottom: 8px;
    }

    .footer-grid .brand-col p {
      color: #6b6b7a;
      font-size: 0.9rem;
      max-width: 280px;
      line-height: 1.6;
    }

    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }

    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: #f0efed;
      display: grid;
      place-items: center;
      color: #6b6b7a;
      transition: 0.2s;
      font-size: 1rem;
    }

    .footer-grid .brand-col .socials a:hover {
      background: #e07a5f;
      color: white;
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 0.9rem;
      margin-bottom: 12px;
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    .footer-grid .col ul li a {
      color: #6b6b7a;
      font-size: 0.9rem;
      transition: 0.2s;
    }

    .footer-grid .col ul li a:hover {
      color: #e07a5f;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid rgba(26, 26, 46, 0.04);
      color: #a0a0b0;
      font-size: 0.8rem;
    }

    /* ----- responsive ----- */
    @media (max-width: 1100px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (max-width: 900px) {
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 200px;
      }
      .deal-wrap .deal-content {
        padding: 28px 30px;
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 28px;
      }
      .hero h1 {
        font-size: 2.6rem;
      }
    }

    @media (max-width: 768px) {
      .nav-desktop {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 14px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }
      .hero {
        margin: 12px 12px 0;
        padding: 36px 0;
        border-radius: 18px;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .search-wrap {
        min-width: 120px;
      }
      .header-inner {
        flex-wrap: nowrap;
      }
      .newsletter-wrap {
        flex-direction: column;
        text-align: center;
        padding: 32px 24px;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 20px;
      }
      .deal-wrap .deal-content h3 {
        font-size: 1.5rem;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 10px;
      }
      .container {
        padding: 0 14px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .hero .actions .btn {
        padding: 8px 18px;
        font-size: 0.8rem;
      }
      .product-card .body h5 {
        font-size: 0.8rem;
      }
      .product-card .price {
        font-size: 0.95rem;
      }
      .timer-box {
        min-width: 52px;
        padding: 6px 10px;
      }
      .timer-box .num {
        font-size: 1.2rem;
      }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
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

      <div style="display:flex;align-items:center;gap:10px;">
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
          <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- deal -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <div><h2>⚡ Flash Deal</h2><p>Limited stock — grab it now</p></div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> items left — hurry!</p>
            <div class="timer-grid"
