# city_cykler_terminsprove

https://www.w3schools.com/howto/howto_js_active_element.asp
https://docs.ckeditor.com/ckeditor5/latest/builds/guides/quick-start.html#classic-editor

``javascript

  <h2 class="admin_h2">REDIGER TILBUD</h2>
            <%  for(let i = 0; i < alleTilbud.length; i++){ %>
                <div class="col-md-5" id="admin_tilbud_div">
                    <h3><%= alleTilbud[i].navn %></h3>
                    <img id="tilbud_img" src="/images/Cykler/<%= alleTilbud[i].billede%>" alt="">
                    <p class="tilbud_p" id="tilbud_pris">Før <%= alleTilbud[i].pris %> kr. </p>
                    <p class="tilbud_p" id="tilbudspris">Nu kun <%= alleTilbud[i].tilbudspris %> kr.</p>
                </div>
                <%}%>

`` 