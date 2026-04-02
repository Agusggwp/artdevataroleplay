// Simple loading screen script
console.log('[Loading Screen] Initialized');

// Optional: Update loading tips dynamically
const tips = [
    '💡 Tip: Baca peraturan server di discord kami!',
    '📞 Butuh bantuan? Hubungi admin di chat server!',
    '🚗 Nikmati berbagai job dan cara menghasilkan uang!',
    '🏠 Beli properti dan bangun bisnis Anda sendiri!',
    '🎯 Bergabunglah dengan gang/organisasi di server!',
    '💰 Sistem ekonomi yang realistis menunggu Anda!'
];

let tipIndex = 0;
setInterval(() => {
    const tipElement = document.querySelector('.loading-tips');
    if (tipElement) {
        tipElement.textContent = tips[tipIndex % tips.length];
        tipIndex++;
    }
}, 5000);
