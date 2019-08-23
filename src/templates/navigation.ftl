<#assign x = 0 />
<#assign y = 0 />

<div id="menuDesplegable">

    <div class="menu-principal">
        <div class="container">

			<nav class="${nav_css_class} navbar navbar-expand-lg navbar-dark " id="navigation" role="navigation">
				
				<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
				
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto" aria-label='<@liferay.language key="site-pages" />' role="menubar">
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
		                        </li>
					  		
					  		<#elseif nav_item.hasChildren()>
								<li class="nav-item ">
									<a class="nav-link" href="#a${nav_item.getLayoutId()}" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseTramites">
										${nav_item.getName()}
									</a>
								</li>
							
							<#else>
								<li class="${nav_item_css_class} nav-item " id="layout_${nav_item.getLayoutId()}" role="presentation">
									<a class="nav-link" aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
										<@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}
									</a>
								</li>
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
							</#if>
						</#list>
					</ul>
				</div>
			</nav>

 		</div>              
   	</div>

<!-- ....................................... -->
    <#list nav_items as nav_item>
  
    <#assign
        nav_item_attr_has_popup = ""
        nav_item_attr_selected = ""
        nav_item_css_class = ""
        nav_item_layout = nav_item.getLayout()
    />

    <#if nav_item.isSelected()>
        <#assign
            nav_item_attr_has_popup = "aria-haspopup='true'"
            nav_item_attr_selected = "aria-selected='true'"
            nav_item_css_class = "selected"
        />
    </#if>
  	
  	<#if nav_item.hasChildren()>
  					 
  		<div class="container collapse" id="a${nav_item.getLayoutId()}" data-parent="#menuDesplegable">
            <div class="row mt-25 mb-50">
                <div class="col-lg-10 offset-lg-1">
                    
                    <p class="titulon2 subtitlulo-submenu text-center mb-25">${nav_item.getName()}</p>

                    <div class="row">

	              		<#list nav_item.getChildren() as nav_child>

	                        <#assign
	                            nav_child_attr_selected = ""
	                            nav_child_css_class = ""
	                        />

	                        <#if nav_item.isSelected()>
	                            <#assign
	                                nav_child_attr_selected = "aria-selected='true'"
	                                nav_child_css_class = "selected"
	                            />
	                        </#if>
                            
                		<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
                			<div class="col-lg-3">

							<#if nav_child.hasChildren()>

          						<p class="subtitlulo-submenu text-center">${nav_child.getName()}</p>
         
            					<ul class="lista-menu">
			  					
				  					<#list nav_child.getChildren() as nav_grandchild>
							            <#assign
											nav_grandchild_attr_selected = ""
											nav_grandchild_css_class = ""
										/>

										<#if nav_grandchild.isSelected()>
											<#assign
												nav_grandchild_attr_selected = "aria-selected='true'"
												nav_grandchild_css_class = "active"
											/>
										</#if>

										<li ${nav_grandchild_attr_selected} id="layout_${nav_grandchild.getLayoutId()}" role="presentation">
											<a aria-labelledby="layout_${nav_grandchild.getLayoutId()}" href="${nav_grandchild.getURL()}" ${x} ${nav_grandchild.getTarget()} role="menuitem">
												${nav_grandchild.getName()}
											</a>
										</li>
							    	</#list>

               					</ul>
                            
				            <#else>       
				            	<span ${nav_child_attr_selected} class="${nav_child_css_class} menu-item" id="layout_${nav_child.getLayoutId()}" role="presentation">
									<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">
										${nav_child.getName()}
									</a>
								</span>
				            </#if>

			            	</div>
                
                	<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
                
                    	</#list>
                    </div>

	            </div>
            </div>
        </div>
        
    </#if>
 </#list> 

<!-- *****************************************************************************************-->

</div>