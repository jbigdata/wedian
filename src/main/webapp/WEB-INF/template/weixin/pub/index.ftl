<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>${systemName} - ${systemDescription}</title>
[#include "/include/header.ftl"  /]
    <script type="application/javascript">
        $(function () {
            $("input[name='chkPub']").bind("click", function () {
                $.ajax2({
                    type: "get",//使用get方法访问后台
                    dataType: "json",//返回json格式的数据
                    url: "${base}/weixin/pub/change/" + this.id,//要访问的后台地址
                    data: "",//要发送的数据
                    error: function (msg) {
                        //    alert(msg);
                    },//AJAX请求完成时隐藏loading提示
                    success: function (data) {//msg为返回的数据，在这里做数据绑定

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
                 <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">公众号列表</div>

                    <!-- Table -->
                    <table class="table">
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="chkAll"></th>
                            <th>昵称</th>
                            <th>邮箱</th>
                            <th>appid</th>
                            <th>secret</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="userTbody">
                        [#list list as pub]
                            <tr>
                                <td><input type="checkbox" name="id"> </td>
                                <td>${pub.name}</td>
                                <td>${pub.email}</td>
                                <td>${pub.appid}</td>
                                <td>${pub.secret}</td>
                                <td><input type="radio" name="chkPub" value="${pub.id}"></td>
                            </tr>
                        [/#list]
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
[#include "/include/footer.ftl" /]
