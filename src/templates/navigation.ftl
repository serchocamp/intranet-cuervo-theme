<#assign x = 0 />
<div id="menuDesplegable">
            <div class="menu-principal">
                <div class="container">


<nav class="${nav_css_class} navbar navbar-expand-lg navbar-dark " id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav mr-auto" aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
		<#assign x++ />
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_css_class = "selected"
				/>
			</#if>
			 <#if x = 2>
			 <li class="nav-item">
                                    <a class="nav-link" href="#collapseMarcas" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseTramites">
                                        ${nav_item.getName()}
                                    </a>
                               
<#else>
			<li class="${nav_item_css_class} nav-item " id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a class="nav-link" aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>
<!--
				<#if nav_item.hasChildren()>
					<ul class="child-menu" role="menu">
						<#list nav_item.getChildren() as nav_child>
							<#assign
								nav_child_css_class = ""
							/>

							<#if nav_item.isSelected()>
								<#assign
									nav_child_css_class = "selected"
								/>
							</#if>

							<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
								<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
							</li>
						</#list>
					</ul>
				</#if>
-->
			</li>
			</#if>
		</#list>
	</ul>
	</div>
</nav>

 </div>              
   </div>


   
    </div>