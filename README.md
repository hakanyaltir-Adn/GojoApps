# 🌐 GojoApps Website

Modern, multi-project portfolio website for GojoApps mobile applications.

## 🎯 Overview

This website serves as the main portal for all GojoApps projects, currently featuring:
- **Kids Habit Builder** - Family habit tracking app (Coming Nov 2025)
- More apps coming soon!

## 🏗️ Structure

```
/
├── index.html              # Main landing page (English)
├── index-tr.html           # Main landing page (Turkish)
├── apps/
│   └── kids-habit-builder/
│       ├── index.html      # App landing page
│       ├── index-tr.html   # App landing page (Turkish)
│       ├── privacy.html    # Privacy Policy
│       ├── terms.html      # Terms of Service
│       └── support.html    # Support page (coming)
├── assets/
│   ├── css/
│   │   └── style.css       # Modern CSS with Kids Habit Builder palette
│   └── img/
└── support.html            # General support
```

## 🎨 Design System

### Color Palette
```css
--primary-purple: #7C3AED    /* Primary brand color */
--fresh-green: #10B981       /* Success, motivation */
--warm-yellow: #FBBF24       /* Highlights, badges */
--light-purple-bg: #F5F3FF   /* Light backgrounds */
```

### Features
- ✅ Fully responsive (mobile-first)
- ✅ Modern CSS with custom properties
- ✅ Smooth animations & transitions
- ✅ SEO optimized
- ✅ Accessibility focused
- ✅ Fast loading performance

## 📱 Kids Habit Builder

### Status
🚧 **Coming November 2025**

### Key Features
- 👪 Multi-child support
- 📋 Flexible task system
- 🎁 Custom rewards
- ✅ Parent approval
- 🔒 COPPA compliant
- 🌍 Turkish & English

### Pricing
- **7 days free trial**
- **$9.99/month** or **$69.99/year** (save 42%)
- **Turkey:** ₺99.99/ay veya ₺699.99/yıl

## 🚀 Deployment

### GitHub Pages
Currently hosted at: `https://hakanyaltir-adn.github.io/GojoApps/`

### Publishing Updates
```bash
# 1. Make changes locally
# 2. Test thoroughly
# 3. Commit and push to main branch
git add .
git commit -m "Update website content"
git push origin main

# GitHub Pages will auto-deploy from main branch
```

## 📝 Adding New Apps

To add a new app to the portfolio:

1. Create app directory:
```bash
mkdir -p apps/your-app-name
```

2. Create required pages:
- `index.html` (landing page)
- `index-tr.html` (Turkish version)
- `privacy.html` (privacy policy)
- `terms.html` (terms of service)

3. Update main `index.html`:
- Add new app card in the apps grid
- Update navigation if needed

4. Use existing CSS classes for consistency

## 🎯 SEO Optimization

### Meta Tags
All pages include:
- Title tags
- Meta descriptions
- Open Graph tags
- Keywords
- Canonical URLs

### Best Practices
- Semantic HTML5
- Alt text on images
- Proper heading hierarchy
- Internal linking
- Mobile-friendly design

## 🔒 Security & Privacy

- ✅ HTTPS enforced (GitHub Pages)
- ✅ No tracking cookies
- ✅ GDPR compliant
- ✅ COPPA compliant (Kids Habit Builder)
- ✅ Privacy Policy & Terms available

## 📊 Performance

### Targets
- PageSpeed Score: 90+
- First Contentful Paint: < 1.5s
- Time to Interactive: < 3s

### Optimizations
- CSS variables for consistency
- Minimal JavaScript
- Optimized images (use WebP when possible)
- No external dependencies (except fonts)

## 🌍 Internationalization

### Supported Languages
- 🇬🇧 English (default)
- 🇹🇷 Turkish

### Implementation
- Separate HTML files per language
- Language switcher in navigation
- Consistent structure across languages

## 📞 Contact & Support

- **Website:** https://hakanyaltir-adn.github.io/GojoApps/
- **Email:** support@kidshabitbuilder.com (Kids Habit Builder)
- **GitHub:** [GojoApps Repository]

## 🛠️ Technology Stack

- **HTML5** - Semantic markup
- **CSS3** - Modern CSS with custom properties
- **Vanilla JavaScript** - No frameworks needed
- **Google Fonts** - Poppins & Inter
- **GitHub Pages** - Free hosting

## 📄 License

© 2025 GojoApps. All rights reserved.

## 🚧 Coming Soon

- [ ] Blog section
- [ ] Newsletter signup
- [ ] Press kit
- [ ] More apps
- [ ] Video demos
- [ ] User testimonials

---

## 🎉 Recent Updates

### November 2, 2025 - v2.1
- ✅ Fixed logo size issue (optimized from 955KB to 4.6KB)
- ✅ Complete Turkish localization for all pages
- ✅ Kids Habit Builder Turkish landing page (`index-tr.html`)
- ✅ Consistent design across English and Turkish versions
- ✅ Mobile-responsive navigation with hamburger menu
- ✅ All legal pages (Privacy Policy, Terms) ready

---

**Last Updated:** November 2, 2025
**Version:** 2.1
**Status:** ✅ Production Ready
