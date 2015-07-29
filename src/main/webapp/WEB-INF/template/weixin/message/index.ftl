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
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">新建群发信息</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">已发送</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputName2">群发对象</label>
                                <select class="form-control">
                                    <option>全部</option>
                                    <option>未分组</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName2">性别</label>
                                <select class="form-control">
                                    <option>全部</option>
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName2">国家地区</label>
                                <select class="form-control">
                                    <option>全部</option>
                                    <option>2</option>
                                         <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                        </form>
                        <div class="col-sm-7 infobox-container">
                            <div class="infobox infobox-green  ">
                                <div class="infobox-icon">
                                    <i class="icon-comments glyphicon glyphicon-qrcode"></i>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">32</span>
                                    <div class="infobox-content">2个评论</div>
                                </div>
                                <div class="stat stat-success">8%</div>
                            </div>

                            <div class="infobox infobox-blue  ">
                                <div class="infobox-icon">
                                    <i class="icon-twitter glyphicon glyphicon-qrcode"></i>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">11</span>
                                    <div class="infobox-content">新粉丝</div>
                                </div>

                                <div class="badge badge-success">
                                    +32%
                                    <i class="icon-arrow-up"></i>
                                </div>
                            </div>

                            <div class="infobox infobox-pink  ">
                                <div class="infobox-icon">
                                    <i class="icon-shopping-cart glyphicon glyphicon-qrcode"></i>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">8</span>
                                    <div class="infobox-content">新订单</div>
                                </div>
                                <div class="stat stat-important">4%</div>
                            </div>

                            <div class="infobox infobox-red  ">
                                <div class="infobox-icon">
                                    <i class="icon-beaker glyphicon glyphicon-qrcode"></i>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">7</span>
                                    <div class="infobox-content">调查</div>
                                </div>
                            </div>

                            <div class="infobox infobox-orange2  ">
                                <div class="infobox-chart">
                                    <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"><canvas width="44" height="24" style="display: inline-block; width: 44px; height: 24px; vertical-align: top;"></canvas></span>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">6,251</span>
                                    <div class="infobox-content">页面查看次数</div>
                                </div>

                                <div class="badge badge-success">
                                    7.2%
                                    <i class="icon-arrow-up glyphicon glyphicon-qrcode"></i>
                                </div>
                            </div>

                            <div class="infobox infobox-blue2  ">
                                <div class="infobox-progress">
                                    <div class="easy-pie-chart percentage easyPieChart" data-percent="42" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
                                        <span class="percent">42</span>%
                                        <canvas width="46" height="46"></canvas></div>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-text">交易使用</span>

                                    <div class="infobox-content">
                                        <span class="bigger-110">~</span>
                                        剩余58GB
                                    </div>
                                </div>
                            </div>

                            <div class="space-6"></div>

                            <div class="infobox infobox-green infobox-small infobox-dark">
                                <div class="infobox-progress">
                                    <div class="easy-pie-chart percentage easyPieChart" data-percent="61" data-size="39" style="width: 39px; height: 39px; line-height: 39px;">
                                        <span class="percent">61</span>%
                                        <canvas width="39" height="39"></canvas></div>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">任务</div>
                                    <div class="infobox-content">完成</div>
                                </div>
                            </div>

                            <div class="infobox infobox-blue infobox-small infobox-dark">
                                <div class="infobox-chart">
                                    <span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas width="39" height="14" style="display: inline-block; width: 39px; height: 14px; vertical-align: top;"></canvas></span>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">获得</div>
                                    <div class="infobox-content">$32,000</div>
                                </div>
                            </div>

                            <div class="infobox infobox-grey infobox-small infobox-dark">
                                <div class="infobox-icon">
                                    <i class="icon-download-alt"></i>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">下载次数</div>
                                    <div class="infobox-content">1,205</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">...</div>
                </div>
            </div>
        </div>
    </div>
    <br>
[#include "/include/footer.ftl" /]
