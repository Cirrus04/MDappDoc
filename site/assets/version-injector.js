document.addEventListener("DOMContentLoaded", function() {
    const version = "{{ config.extra.version }}"; // MkDocs will replace this with the version string
    if (version) {
        const titleElement = document.querySelector(".md-header__title");
        if (titleElement) {
            const versionSpan = document.createElement("span");
            versionSpan.className = "md-version"; // Use the CSS class you already made
            versionSpan.textContent = version;
            titleElement.appendChild(versionSpan);
        }
    }
});