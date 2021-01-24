{% set stats = [ 
    [10220   , 50,    "Coffees drank","fas fa-coffee"],
    [8100000 , 15000, "Lines of code", "fas fa-code"],
    [219     , 1,     "Projects completed", "fas fa-child"],
    [12.5    , 1,     "Keybords destroyed", "fas fa-keyboard"],
    [150     , 1,     "Time spent trying to exit VIM ( in hours )", "fab fa-keyboard"],
    [250     , 1,     "Arguments with senior developers over implementation", "fas fa-code-branch"],
    [13100   , 100,   "Arguments with managers what was implemented vs specs...", "fas fa-chart-bar"]
]%}

<div id="statistics" class="section stats">
    <h2 id="checkout">Check out some of my stats!</h2>
    {% for stat in stats %}
        <div id="s_{{ loop.index }}" data-target="{{ stat[0] }}" data-step="{{ stat[1] }}" class="stat">
            {{ stat[2] }}
            <span class="counter">
                <b>0</b>
                <i class="{{ stat[3] }}"></i>
            </span>
        </div>
    {% endfor %}
</div>

<script>

    var is_started = false;

    var stats = document.getElementById("statistics")
                        .getElementsByClassName("stat");
            

    function is_visible(el) {

        var rect = el.getBoundingClientRect();
        
        var elemTop = rect.top;
        var elemBottom = rect.bottom;

        return (elemBottom <= window.innerHeight); // (elemTop >= 0) && 

    }

    function count_to(next){

        var locale = {minimumFractionDigits: 3, maximumSignificantDigits: 3};
        var element = stats[next];

        var step = parseFloat(element.dataset.step);
        var end_at = parseFloat(element.dataset.target);

        var label = element.getElementsByTagName("b")[0];
        var index = 0;

        element.style.opacity = 1;

        var interval = setInterval(function(){
            index += step;
            if(index <= end_at){
                label.innerHTML = index.toLocaleString(undefined,locale);
            } else {
                label.innerHTML = end_at.toLocaleString(undefined,locale);
                clearInterval(interval);
                index = 0; 
                label = element = null;
                if(next < stats.length - 1)
                    count_to(next+1);
            }
        }, 2)

        return;

    }

    function scroll(){

        if(is_started)
            return;

        var element = document.getElementById("checkout");

        if(is_visible(element)){
            is_started = true;
            count_to(0);
        }

    }
    
    // check
    scroll();

</script>