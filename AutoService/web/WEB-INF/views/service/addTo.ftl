<#include "../main_template.ftl"/>
<@main_template title="Добавление"/>
<#macro m_body>
<div class="narrow">


    <div id="right">
        <ul class="breadcrumb-navigation">
            <li><a href="/" title=""><img src="/resources/images/home.png" width="12" height="12"></a></li>
            <li><span>&nbsp;/&nbsp;</span></li>
            <li>Добавить цену для модели</li>
        </ul>
        <div class="both"></div>
        <h1>Добавить цену для модели</h1>
        <#if RequestParameters.error??>
            <p><span class="errortext">Уже существует.<br></span></p>
        </#if>
        <#if RequestParameters.success??>
            <p style="color: green"><span>Добавлено<br></span></p>
        </#if>
        <div id="pop-form" class="static">
            <div class="container_form">
                <div style="margin-top: 16px;">

                    <form name="form_auth" method="post" target="_top" action="/services/addTo">
                        <div class="form-group">
                            <span class="input-text">Модель</span>
                            <select class="form-control" name="model">
                                <#list brands as brand>
                                    <option disabled="disabled">${brand.getName()}</option>
                                    <#list brand.getAutoModels() as model>
                                        <option value="${model.getId()}">${model.getName()}</option>
                                    </#list>
                                </#list>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="input-text">Цена&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                            <input class="text" autocomplete="on" type="number" maxlength="255" value="" name="price">
                        </div>

                        <br><br>
                        <p></p>
                        <input align="center" type="submit" name="Login" value="Добавить" class="button_red_big"
                               style="left: 110px; top: -31px">

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</#macro>