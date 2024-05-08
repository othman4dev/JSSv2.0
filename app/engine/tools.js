function addTabulations(text, count) {
    return text.split('\n').map(line => '\t'.repeat(count) + line).join('\n');
}