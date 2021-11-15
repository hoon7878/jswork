<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <!--Load the AJAX API-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
		
    	 // let chartData ;
    	  // ajax로 데이터 갖고 오기.
    	  $.ajax( {
    		  // 동기식과 비동기가 있는데 디폴트는 비동기.
    		  // 비동기식으로 
    		  url : 'chart.json',
    		  dataType : 'json',
    	//	  asyne : false  // 동기식으로 호출 // 이거 없으면 비동기식.
    	  }).done(function (result) {
    		  chartDraw (result)
    	  })
    	  
    	 function chartDraw(chartData) {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        
        data.addRows(chartData); // ajax 응답 데이터 들어갈 자리. 

        // Set chart options
        var options = {'title':'How Much Pizza I Ate Last Night',
                       'width':400,
                       'height':300};
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.BarChart(document.getElementById('chart_div')); //PieChart 자리에 다른 차트 넣어도 된다.
        chart.draw(data, options);
      //  google.visualization.event.addListener(chart,'select', selectHandler);
       function selectHandler() {
        	//alert(row);
        	// chart.sele~  선택한 막대의 값을 읽어보기. 찾아서 넣어보기. 그 값을 콘솔로그에 찍어서 해보기.
        	console.log();
         } 
        }
      }	  
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>