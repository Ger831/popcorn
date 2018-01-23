    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    var id = getParameterByName('id');

    function verListaPeliculas(action, catid){
        var datay = {"catId": id,
                     "Accion":"listar2"
                    };
                    console.log(datay);
        $.ajax({
            data: datay, 
            type: "POST",
            dataType: "json", 
            url: "controllers/controllerpelicula.php",
        })
        .done(function(data,textStatus,jqXHR ) {
            if ( console && console.log ) {
                console.log( " data success : "+ data.success 
                    + " \n data msg : "+ data.message 
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
            for(var i=0; i<data.datos.length;i++){
                                var descrip= data.datos[i].lispelis_descripcion;
                                textonuevo = descrip.substr(0,30);
                                fila ='<a href="Pelicula.html?id='+data.datos[i].lispelis_id+'"><div class="row"><div class="col-xs-4"><img src="'+data.datos[i].lispelis_imagen+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].lispelis_titulo+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].lispelis_subtitulo+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="2">'+textonuevo+'...</font></div></div>';
                                fila +='</div></div></a><br>';
                                $("#pelis").append(fila);
                }

        })
        .fail(function( jqXHR, textStatus, errorThrown ) {
            if ( console && console.log ) {
                console.log( " La solicitud ha fallado,  textStatus : " +  textStatus 
                    + " \n errorThrown : "+ errorThrown
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
        });
    }
    verListaPeliculas();