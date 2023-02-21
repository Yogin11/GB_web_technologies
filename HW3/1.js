function convertToFahrenheit() {
    const t = Number.parseFloat(prompt("Введите температуру в градусах Цельсия"));
    let fahr = 9 / 5 * t + 32;
    alert(`Цельсий: ${+t},  Фаренгейт: ${+fahr.toFixed(1)}`);
}

convertToFahrenheit();
