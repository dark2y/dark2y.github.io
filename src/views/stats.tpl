{% set stats = [ 
    ["coffe","Coffees drank","fas fa-coffee"],
    ["code","Lines of code", "fas fa-code"],
    ["projects","Projects done", "fas fa-child"],
    ["keyboards","Keybords destroyed", "fas fa-keyboard"],
    ["junior","Arguments with junior developers over UI frameworks...", "fab fa-angular"],
    ["senior","Arguments with senior developers over software architecture...", "fas fa-code-branch"],
    ["managers","Arguments with managers over why a framework or architecture was implemented...", "fas fa-chart-bar"]
]%}

<div class="section stats">
    <h2>Check out some of my stats!</h2>
    {% for stat in stats %}
        <div id="s_{{ stat[0] }}" class="stat coffe">
            {{ stat[1] }}
            <span class="counter">
                <b>0</b>
                <i class="{{ stat[2] }}"></i>
            </span>
        </div>
    {% endfor %}
</div>

<script>

    function count_to(element,end_at,step,next){

        var locale = {minimumFractionDigits: 3, maximumSignificantDigits: 3};

        var element = document.getElementById("s_" + element);
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
                if(next)
                    next(element,label,end_at);
            }
        }, 2)

        return;

    }

    count_to("coffe", 4380 * 2, 100, function(el,label,stats){
        count_to("code", 4380 * 50, 500, function(){
                count_to("projects", (4380 * (1 / 30)), 1, function(){
                    count_to("keyboards", (4380 * (1 / 360)), 1, function(){
                            count_to("junior", (4380 * (1 / 7)), 1, function(){
                                count_to("senior", (4380 * (1 / 11)), 1, function(){
                                    count_to("managers",(43800*3), 1000, function(){
                                        
                                    });
                                });
                        })
                    })
                });
        });
    });

</script>