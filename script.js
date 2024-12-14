const quotes = [
    "天下兴亡，匹夫有责。",
    "为中华之崛起而读书。",
    "人生自古谁无死，留取丹心照汗青。",
    "先天下之忧而忧，后天下之乐而乐。",
    "位卑未敢忘忧国。"
];

let currentQuoteIndex = 0;

function changeQuote() {
    currentQuoteIndex = (currentQuoteIndex + 1) % quotes.length;
    document.getElementById("quote").innerText = quotes[currentQuoteIndex];
}