{% set stats = [ 
    [8760    , 100,"coffe","Coffees drank","fas fa-coffee"],
    [8100000 , 15000,"code","Lines of code", "fas fa-code"],
    [219     , 1,"projects","Projects completed", "fas fa-child"],
    [12.5    , 1,"keyboards","Keybords destroyed", "fas fa-keyboard"],
    [398     , 1,"junior","Arguments with junior developers over UI frameworks...", "fab fa-angular"],
    [12      , 1,"senior","Arguments with senior developers over software architecture...", "fas fa-code-branch"],
    [13100   , 100,"managers","Arguments with managers over why a framework or architecture was implemented...", "fas fa-chart-bar"]
]%}

<div id="statistics" class="section stats">
    <h2 id="checkout">Check out some of my stats!</h2>
    {% for stat in stats %}
        <div id="s_{{ stat[2] }}" data-step="{{ stat[1] }}" data-target="{{ stat[0] }}" class="stat">
            {{ stat[3] }}
            <span class="counter">
                <b>0</b>
                <i class="{{ stat[4] }}"></i>
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

        // Only completely visible elements return true:
        var isVisible = (elemTop >= 0) && (elemBottom <= window.innerHeight);
        // Partially visible elements return true:
        //isVisible = elemTop < window.innerHeight && elemBottom >= 0;
        return isVisible;

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
                label = null;
                element = null;
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

            /*

            count_to("coffe", 4380 * 2, 100, function(el,label,stats){
                count_to("code", 4380 * 1850, 15000, function(){
                        count_to("projects", (4380 * (1 / 20)), 1, function(){
                            count_to("keyboards", (4380 * (1 / 360)), 1, function(){
                                    count_to("junior", (4380 * (1 / 7)), 1, function(){
                                        count_to("senior", (4380 * (1 / 11)), 1, function(){
                                            count_to("managers",(4380*3), 1000, function(){
                                            });
                                        });
                                })
                            })
                        });
                });
            }); */

        }

    }

</script>