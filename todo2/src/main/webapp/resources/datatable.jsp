<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>

</head>
<body>
	<table id="table_id" class="display">
    <thead>
        <tr>
            <th>Column 1</th>
            <th>Column 2</th>
            <th>Column 3</th>
            <th>Column 4</th>
            <th>Column 5</th>
            <th>Column 6</th>
        </tr>
    </thead>
   
</table>
<script>
	//ajax를 이용해서 data 값을 받아와서 출력이 가능하다.
	$('#table_id').DataTable({
		ajax : "resources/data.json",
		 columns: [
	            { "data": "name" },
	            { "data": "position" },
	            { "data": "office" },
	            { "data": "extn" },
	            { "data": "start_date" },
	            { "data": "salary" }
	        ]
	});
</script>

</body>
</html>