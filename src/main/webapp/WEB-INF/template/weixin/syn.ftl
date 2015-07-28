<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>${systemName} - ${systemDescription}</title>
[#include "/include/header.ftl"  /]
    <script type="application/javascript">
        $(function () {
            $("a[name='groupBtn']").bind("click", function () {
                $.ajax2({
                    type: "get",//使用get方法访问后台
                    dataType: "json",//返回json格式的数据
                    url: "${base}/weixin/user/" + this.id,//要访问的后台地址
                    data: "",//要发送的数据
                    error: function (msg) {
                        //    alert(msg);
                    },//AJAX请求完成时隐藏loading提示
                    success: function (data) {//msg为返回的数据，在这里做数据绑定
                        $("#userTbody").html("");
                        for (var i = 0; i < data.data.length; i++) {
                            var tr="<tr>";
                            tr+="<th scope=\"row\"><input type='checkbox'></th>";
                            tr+="<td><img width='49' height='49' src=\"" + data.data[i].headimgurl + "\" class=\"img-responsive\" alt=\"...\"></td>";
                            tr+="<td>" + data.data[i].nickname + "</td>";
                            tr+="<td>" +(data.data[i].sex==1?"男":"女") + "</td>";
                            tr+="<td>" + data.data[i].country + "</td>";
                            tr+="<td>" + data.data[i].province + "</td>";
                            tr+="</tr>";
                            $("#userTbody").append(tr);
                        }
                    }
                });
            });
        });
    </script>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
            [#include "/include/menu.ftl" /]
            </div>
            <div class="col-md-10">
                <div class="categories">

                    <ul class="cat">
                        <li class="pull-left"><h4>按分组浏览:</h4></li>
                        <li class="pull-right">
                            <ol class="type">
                            [#list groups as group]
                                <li><a href="#" name="groupBtn" id="${group.groupId}">${group.name}(${group.count})</a></li>
                            [/#list]
                            </ol>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">用户列表</div>

                    <!-- Table -->
                    <table class="table">
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="chkAll"></th>
                            <th>头像</th>
                            <th>昵称</th>
                            <th>性别</th>
                            <th>国家</th>
                            <th>地区</th>
                        </tr>
                        </thead>
                        <tbody id="userTbody">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>
[#include "/include/footer.ftl" /]
