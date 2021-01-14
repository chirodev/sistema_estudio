<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Conteo de votos</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="{{ asset('/dist/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/modules/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css') }}">

    <link rel="stylesheet" href="{{ asset('/dist/modules/summernote/summernote-lite.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/modules/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/css/demo.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/css/style.css') }}">


    <style>
        .table-content{
            width: 100%;
            margin-top: 10px;
            margin-right: 20px;
        }
        .table-content .table-responsive-content{
            width: 100%;
            border-radius: 5px;
            text-align: center;
            border-collapse: collapse;
            border-spacing: 0;
            color: #16181b;
            transition: all .4s ease;
        }
        .table-content .table-responsive-content tr{
            width: 100%;
            background: #fff;
        }
        .table-content .table-responsive-content tr:nth-child(2n){
            background: #f2f2f2;
        }
        .table-content .table-responsive-content .row-header{
            background: rgba(0, 0, 0, .08);
        }


        .table-content .table-responsive-content th,
        .table-content .table-responsive-content td{
            padding: 6px;
            border: 1px solid #dee2e6;
            text-align: center;
        }
        .table-content .table-responsive-content .row-header th{
            padding: 15px;
            text-align: center;
            font: 500 14px Roboto,RobotoDraft,Helvetica,Arial,sans-serif;
            border: 1px solid #e8e8e8;
        }

        .table-content .table-responsive-content .col-show{
            display: none;
        }

        @media    screen and (max-width: 850px) {
            .table-content .table-responsive-content thead{
                display: none;
            }
            .table-content .table-responsive-content tr{
                margin: 0 0 15px;
                display: block;
                border: 1px solid #e8e8e8;
            }
            .table-content .table-responsive-content td,
            .table-content .table-responsive-content th{
                display: block;
                text-align: left;
                padding: 10px 15px 10px 170px;
                font-size: 14px;
                position: relative;
                border: none;
                margin-left: 5px;
            }
            .table-content .table-responsive-content .col-show{
                display: block;
                border: none;
                position: absolute;
                font-weight: bold;
                font-size: 16px;
                top: 7px;
                left: 10px;
                padding-bottom: 20px
            }
        }
    </style>
    
</head>
<body>

    <div id="app">
        <div id="raiz"></div>
    </div>

    <script src="/js/app.js"></script>
    <script src="{{ asset('/dist/modules/jquery.min.js') }}"></script>
    <script src="{{ asset('/dist/modules/popper.js') }}"></script>
    <script src="{{ asset('/dist/modules/tooltip.js') }}"></script>
    <script src="{{ asset('/dist/modules/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('/dist/modules/nicescroll/jquery.nicescroll.min.js') }}"></script>
    <script src="{{ asset('/dist/modules/scroll-up-bar/dist/scroll-up-bar.min.js') }}"></script>

    <script src="{{ asset('/dist/js/sa-functions.js') }}"></script>



    <script src="{{ asset('/dist/modules/chart.min.js') }}"></script>
  <script>

    $.ajax({
      url : '/voto/get_general',
      type : 'get',
      dataType : 'json',
      data : { },
      success : function (resultado) {
        console.log(resultado)

        var votoTotal = resultado.data[0].voto + resultado.data[1].voto + resultado.data[2].voto + 
          resultado.data[3].voto + resultado.data[4].voto + resultado.data[5].voto + 
          resultado.data[6].voto + resultado.data[7].voto + resultado.data[8].voto;

        var voto = parseFloat(parseFloat(resultado.data[0].voto) * 100 / parseFloat(votoTotal));
        var voto1 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[1].voto) * 100 / parseFloat(votoTotal));
        var voto2 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[2].voto) * 100 / parseFloat(votoTotal));
        var voto3 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[3].voto) * 100 / parseFloat(votoTotal));
        var voto4 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[4].voto) * 100 / parseFloat(votoTotal));
        var voto5 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[5].voto) * 100 / parseFloat(votoTotal));
        var voto6 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[6].voto) * 100 / parseFloat(votoTotal));
        var voto7 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[7].voto) * 100 / parseFloat(votoTotal));
        var voto8 = suma_voto(voto);

        var voto = parseFloat(parseFloat(resultado.data[8].voto) * 100 / parseFloat(votoTotal));
        var voto9 = suma_voto(voto);

        var ctxs = document.getElementById("myChart2").getContext('2d');
        var myCharts = new Chart(ctxs, {
          type: 'bar',
          data: {
            labels: [resultado.data[0].sigla, resultado.data[1].sigla, resultado.data[2].sigla,
              resultado.data[3].sigla, resultado.data[4].sigla, resultado.data[5].sigla,
              resultado.data[6].sigla, resultado.data[7].sigla, resultado.data[8].sigla,
            ],
            datasets: [{
              label: 'Statistics',
              data: [resultado.data[0].voto, resultado.data[1].voto, resultado.data[2].voto,
                resultado.data[3].voto, resultado.data[4].voto, resultado.data[5].voto,
                resultado.data[6].voto, resultado.data[7].voto, resultado.data[8].voto,
              ],
              borderWidth: 2,
              backgroundColor: 'rgb(87,75,144)',
              borderColor: 'rgb(87,75,144)',
              borderWidth: 2.5,
              pointBackgroundColor: '#ffffff',
              pointRadius: 4
            }]
          },
          options: {
            legend: {
              display: false
            },
            scales: {
              yAxes: [{
                ticks: {
                  beginAtZero: true,
                  stepSize: 150
                }
              }],
              xAxes: [{
                ticks: {
                  display: false
                },
                gridLines: {
                  display: false
                }
              }]
            },
          }
        });

        var ctx = document.getElementById("myChart4").getContext('2d');

        var myChart = new Chart(ctx, {
          type: 'pie',
          data: {
            datasets: [{
              data: [
                resultado.data[0].voto,
                resultado.data[1].voto,
                resultado.data[2].voto,
                resultado.data[3].voto,
                resultado.data[4].voto,
                resultado.data[5].voto,
                resultado.data[6].voto,
                resultado.data[7].voto,
                resultado.data[8].voto,
              ],
              backgroundColor: [
                resultado.data[0].color,
                resultado.data[1].color,
                resultado.data[2].color,
                resultado.data[3].color,
                resultado.data[4].color,
                resultado.data[5].color,
                resultado.data[6].color,
                resultado.data[7].color,
                resultado.data[8].color,
              ],
              label: 'Dataset 1'
            }],
            labels: [
              resultado.data[0].sigla + ' ' + voto1 + '% ',
              resultado.data[1].sigla + ' ' + voto2 + '% ',
              resultado.data[2].sigla + ' ' + voto3 + '% ',
              resultado.data[3].sigla + ' ' + voto4 + '% ',
              resultado.data[4].sigla + ' ' + voto5 + '% ',
              resultado.data[5].sigla + ' ' + voto6 + '% ',
              resultado.data[6].sigla + ' ' + voto7 + '% ',
              resultado.data[7].sigla + ' ' + voto8 + '% ',
              resultado.data[8].sigla + ' ' + voto9 + '% ',
            ],
          },
          options: {
            responsive: true,
            legend: {
              position: 'bottom',
            },
          }
        });

      }
    });

    function suma_voto(voto) {
      var cantidad = 0;
      var bandera = false;
      var suma_voto = '';

      for(var i = 0; i < voto.toString().length; i++) {
        if (voto.toString()[i] == '.') {
          suma_voto += voto.toString()[i];
          bandera = true;
        }else {
          if (bandera) {
            if (cantidad < 2) {
              suma_voto += voto.toString()[i];
              cantidad++;
            }else {
              break;
            }
          }else {
            suma_voto += voto.toString()[i];
          }
        }
      }
      return suma_voto;
    }

  </script>



    <script src="{{ asset('/dist/js/scripts.js') }}"></script>
    <script src="{{ asset('/dist/js/custom.js') }}"></script>
    <script>
        
    </script>

</body>
</html>