    $(document).ready(function(){
   
        //funcion para listar
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllerpelicula.php", 
            })
            .done(function( data, textStatus, jqXHR ) {
                $("#listado").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
					            fila ='<a href="listado_peliculas.html?id='+data.datos[i].cat_id+'"><div class="row"><div class="col-xs-4"><img src="'+data.datos[i].cat_imagen+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].cat_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="2">'+data.datos[i].cat_descripcion+'</font></div></div>';
                                fila +='</div></div></a><br>';
                                console.log('id: '+data.datos[i].cat_id + ' nombre: '+data.datos[i].cat_nombre);
								$("#listado").append(fila);
                }
            })
            .fail(function( jqXHR, textStatus, errorThrown ) {
                if ( console && console.log ) {
                    console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus 
                        + " \n errorThrown : "+ errorThrown
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
            });
        }
        getlista();
    });
   