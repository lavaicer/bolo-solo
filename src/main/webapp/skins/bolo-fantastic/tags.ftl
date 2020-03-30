<#-- Solo - A small and beautiful blogging system written in Java. Copyright (c) 2010-present, b3log.org This program is
    free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
    details. You should have received a copy of the GNU Affero General Public License along with this program. If not,
    see <https://www.gnu.org/licenses/>. -->
    <#include "../../common-template/macro-common_head.ftl">

        <!DOCTYPE html>
        <html>

        <head>
            <@head title="${allTagsLabel} - ${blogTitle}">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.7.5/css/bulma.min.css" />
                <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.4.1/css/all.css">
                <link rel="stylesheet"
                    href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css">
                <script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.min.js'></script>
            </@head>
            <#-- <#include "style.theme.ftl"> -->
        </head>

        <body class="is-3-column">
            <#include "header.ftl">
                <div class="card-normal">
                    <section class="section">
                        <div class="container">
                            <div class="columns">
                                <#include "side.ftl">
                                    <div class="column is-8-tablet is-8-desktop is-9-widescreen is-9-fullhd has-order-2 column-main"
                                        style="margin-left: 10px">
                                        <div class="columns">
                                            <div
                                                class="column is-12-tablet is-12-desktop is-12-widescreen has-order-2 column-main">
                                                <div class="card widget">
                                                    <div class="card-content">
                                                        <h3 class="menu-label">
                                                            ${categoryLabel}
                                                        </h3>
                                                        <div class="field is-grouped is-grouped-multiline">
                                                            <#list mostUsedCategories as category>
                                                                <div class="control">
                                                                    <a class="tags has-addons"
                                                                        href="${servePath}/category/${category.categoryURI}">
                                                                        <span
                                                                            class="tag">${category.categoryTitle}</span>
                                                                        <span
                                                                            class="tag is-grey">${category.categoryTagCnt}
                                                                            ${tagLabel}</span>
                                                                    </a>
                                                                </div>
                                                            </#list>
                                                        </div>
                                                    </div>
                                                </div>
                                                      <div class="card widget">
                                                    <div class="card-content">
                                                        <h3 class="menu-label">
                                                            标签云
                                                        </h3>
                                                        <div class="field is-grouped is-grouped-multiline">
                                                            <#list tags as tag>
                                                                  <a href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" style="font-size:<#if tag.tagTitle?length gt 7> ${tag.tagPublishedRefCount+(tag.tagTitle?length)}<#else>${tag.tagPublishedRefCount+(tag.tagTitle?length)*2}</#if>px"> ${tag.tagTitle}</a>&nbsp;&nbsp;
                                                            </#list>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                            </div>

                        </div>
                    </section>
                </div>
                <a id="back-to-top" title="返回顶部" href="javascript:;"><i class="fas fa-chevron-up"></i></a>
                <#include "footer.ftl">
        </body>

        </html>