<%@ page import="java.util.List" %>

<!DOCTYPE html>

<html>
<head>
    <title>Title</title>

    <script type="text/javascript">
        function test() {
            var s = '<g:if test="${var}">value</g:if>';
            var a = 3;
            return a;
        }
        ${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}
        <%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>
    </script>

    <g:javascript>
        function test() {
            var s = "<g:if test="${var}">value</g:if>"; // Not worth fixing?
            var a = 3;
            return a;
        }
        ${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}
        <%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>
    </g:javascript>

    <asset:script>
        function test() {
            var s = "<g:if test="${var}">value</g:if>"; // Not worth fixing?
            var a = 3;
            return a;
        }
        ${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}
        <%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>
    </asset:script>

    <g:javascript src="file.js" />

    <r:script>
        function test() {
            /*
                Not worth fixing?
            */
            var s = <g:if test="${var}">value</g:if>; //
            var a = 3;
            return a;
        }
        ${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}
        <%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>
    </r:script>
</head>
<body>
    <!-- An HTML comment 
    <hr class="${groovyVar}" /> -->

    %{-- A GSP comment
    <hr class="${groovyVar}" /> --}%

    <%-- A JSP comment
    <hr class="${groovyVar}" /> --%>
    

    <div class="htmlAttr" id="${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}">
        HTML tag content
    </div>

    ${[a: groovyVar, b: 5, c: new com.package.Class(arg)]} test

    <g:form action="${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}">
        Grails tag content
    </g:form>

    <div class="htmlAttr" id="<%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>">
        HTML tag content
        n
    </div>

    <%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %> test

    <g:form action="<%= [a: groovyVar, b: 5, c: new com.package.Class(arg)] %>">
        Grails tag content
        other
    </g:form>

    <r:image uri="resourcesTags" />

    <custom:myTag arg="${[a: groovyVar, b: 5, c: new com.package.Class(arg)]}">
        a
        b
    </custom:myTag>

    <div id="logout">
        <span>You are signed in as ${ session.pasport == null ? [a: "test"] : session.passport.user_name }</span>
        <g:link controller="logout">
            <span class="logout dark-button">LOGOUT</span>
            b
        </g:link>
    </div>

    <!-- hayseed's examples -->
    <div id="logout">
        <span>You are signed in as <%= session.pasport == null ? [a: "test"] : session.passport.user_name %></span>
        <g:link controller="logout">
            <span class="logout dark-button">LOGOUT</span>
        </g:link>
    </div>

    <thead>
        <tr>
            <th><%= session.passport == null ? [a: "test"] : session.passport.user_name %>'s Roles</th>
        </tr>
    </thead>
    %{-- This is broken for some highlighters. First part is embedded groovy, but it closes at the first } --}%
    <g:each in="${schedules.groupBy{it.lcRequest}.sort{it.key.title}}" var="request">
    <!-- END hayseed's examples -->

    ${val1 == 0 ? 0 : val2 / val3} %{-- A GSP comment --}%
    ${val1 == 0 ? [a: b] : [a: b]}
    ${val1 == 0 ? (val2 ? 1 : 2) : (val2 ? 3 : 4)}
    ${a?:b}

    <tag> ${ a / b} </tag>

    <tag> ${/a<b/} </tag>
    <g:formatNumber number="${val1 == 0 ? 0 : val2 / val3}" type="percent" />

    <%
        x != y ? (10 + 3) : new Integer(7)
        def h = 4
    %>

    <%!
        def method(String a) {
            def regex = /\$\{\}/
            def str = "something"
        }
    %>

    <%=
        x != y ? (10 + 3) : new Integer(7)
        def h = 4
    %>

    ${
        x != y ? (10 + 3) : new Integer(7)
        x != y ? (10 + 3) : new Integer(7)
    }

    <g:hiddenField name="someName${i+1}" class="someClass anotherClass${i+1}" value="${entry.key}"/>
</body>
</html>


