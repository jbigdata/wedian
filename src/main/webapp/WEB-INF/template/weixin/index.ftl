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

            </div>
        </div>
    </div>
    <br>
[#include "/include/footer.ftl" /]
