<%--
  Created by IntelliJ IDEA.
  User: 天宇
  Date: 2021/12/19
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!-- import Vue before Element -->
    <script src="https://unpkg.zhimg.com/vue/dist/vue.js"></script>
    <!-- import JavaScript -->
    <script src="https://unpkg.zhimg.com/element-ui/lib/index.js"></script>
    <!-- import CSS -->
    <link rel="stylesheet" href="https://unpkg.zhimg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/axios/0.21.1/axios.js"></script>

</head>
<body>

<div id="demo">

    <el-table
            border
            height="240"
            style="width:60%"
            :data="data"
<%--            {#    v-for="(user,index) in data"#}--%>
    >
        <el-table-column
                type="index"
                width="100%"
                align="center"
        >
        </el-table-column>
        <el-table-column
                label="用户名"
                prop="username"
                width="200%"
                align="center"
        ></el-table-column>
        <el-table-column
                label="密码"
                prop="password"
                width="120%"
                align="center"
        ></el-table-column>

    </el-table>

<%--    <p>[[data]]</p>--%>
</div>
</body>
<script>
    var vm = new Vue({
        el:"#demo",
        delimiters: ["[[","]]"],
        data:{
            data:[],
        },
        mounted:function (){
            this.Get();
        },
        methods:{
            Get(){
                axios.get("http://localhost:8080/untitled_war_exploded/testchaxun.jsp").then(response=>{
                    this.data = response.data
                }),err=>{
                    console.log(err);
                };
            },
        },
    });
</script>
</html>