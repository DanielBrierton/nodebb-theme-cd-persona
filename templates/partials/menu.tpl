			<div class="navbar-header">
				<button type="button" class="navbar-toggle" id="mobile-menu">
					<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o" data-content="0"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<div component="navbar/title" class="visible-xs">
					<span></span>
				</div>
			</div>

			<div id="nav-dropdown" class="hidden-xs">
				<!-- IF !maintenanceHeader -->
				<!-- IF config.loggedIn -->

				<ul id="logged-in-menu" class="nav navbar-nav navbar-right hide">
					<li id="user_label" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img component="header/userpicture" src="{user.picture}" alt="{user.username}"<!-- IF !user.picture --> style="display: none;"<!-- ENDIF !user.picture --> />
							<div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture --> display: none;<!-- ENDIF user.picture -->">{user.icon:text}</div>
							<span id="user-header-name" class="visible-xs-inline">{user.username}</span>
						</a>
					</li>
				</ul>
				<ul id="logged-in-menu" class="nav navbar-nav navbar-right">
					<li class="notifications dropdown text-center hidden-xs" component="notifications">
						<a href="#" title="[[global:header.notifications]]" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
							<i component="notifications/icon" class="fa fa-fw fa-bell-o" data-content="0"></i>
						</a>
						<ul class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<ul component="notifications/list" class="notification-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a></li>
							<li class="notif-dropdown-link"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></li>
						</ul>
					</li>

					<!-- IF !config.disableChat -->
					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="[[global:header.chats]]" id="chat_dropdown" component="chat/dropdown">
							<i component="chat/icon" class="fa fa-comment-o fa-fw"></i> <span class="visible-xs-inline">[[global:header.chats]]</span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<ul component="chat/list" class="chat-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="#" class="mark-all-read" component="chats/mark-all-read">[[modules:chat.mark_all_read]]</a></li>
							<li class="notif-dropdown-link"><a href="{relative_path}/chats">[[modules:chat.see_all]]</a></li>
						</ul>
					</li>
					<!-- ENDIF !config.disableChat -->

				</ul>
				<!-- ENDIF config.loggedIn -->

				<ul class="nav navbar-nav pull-right hidden-xs">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav pull-right pagination-block visible-lg visible-md">
					<li class="dropdown">
						<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
						<i class="fa fa-angle-up pointer fa-fw pageup"></i>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="pagination-text"></span>
						</a>

						<i class="fa fa-angle-down pointer fa-fw pagedown"></i>
						<i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
  							<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
  						</ul>
					</li>
				</ul>

				<ul id="main-nav" class="nav navbar-nav">
					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
				</ul>

				<!-- ELSE -->
				<ul class="nav navbar-nav pull-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>
