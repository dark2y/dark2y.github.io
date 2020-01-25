{% set links = [
    {"title": "Linkedin", "button": ["fab fa-linkedin", "https://www.linkedin.com/in/alexandru-iulian-neacsu/"]},
    {"title": "Github", "button": ["fab fa-github", "https://github.com/dark2y"]},
    {"title": "Medium", "button": ["fab fa-medium", "https://medium.com/@dark2y"]},
    {"title": "AngelList", "button": ["fab fa-angellist", "https://angel.co/dark2y"] },
    {"title": "Twitter", "button": ["fab fa-twitter", "https://twitter.com/dark2y"]}
] %}

<div class="section links">
    <ul class="social-buttons">
        <li>
            <a href="#" onclick="return email_me()" target="_blank" class="button">
                <i class="fas fa-envelope"></i>
                <span class="label">Email</span>
            </a>
        </li>
        {% for link in links %}
            <li>
                <a href="{{ link.button[1] }}" target="_blank" class="button">
                    <i class="{{ link.button[0] }}"></i>
                    <span class="label">{{ link.title }}</span>
                </a>
            </li>
        {% endfor %}
        <a id="share_button" href="#" onclick="return share_me()" target="_blank" class="button">
                <i class="fas fa-share-square"></i>
                <span class="label">Share</span>
        </a>
    </ul>
</div>

<script>
function email_me(e) {
    me = atob("aZGFyazJ5QGdtYWlsLmNvbQc".slice(1, -1));
    window.location.href = "mailto:" + me + "?Subject=Hello";
    return false;
}

function share_me(e){
    navigator.share({
        title: document.title,
        text: "Get in contact with Alexandru I. Neacsu at",
        url: window.location.href
    });
    return false;
}

var share = document.getElementById("share_button");

if (navigator.share) {
    share.style.display = "inline-block";
} else {
    share.style.display = "none";
}

</script>